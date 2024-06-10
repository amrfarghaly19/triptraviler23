import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/cafes_restaurant.dart';
import 'package:untitled3445/pages/used/trip_page_ov.dart';

class CityPage extends StatefulWidget {
  final String ID;
  final String PointID, PointName, PointImage;

  CityPage({
    required this.ID,
    required this.PointID,
    required this.PointName,
    required this.PointImage,
  });

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  static const pagePadding = EdgeInsets.symmetric(horizontal: 16.0);
  static const sectionSpacing = EdgeInsets.only(bottom: 35, left: 10, right: 10);
  List<Map<String, dynamic>> allData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchAllLocations();
  }

  Future<void> fetchAllLocations() async {
    List<Map<String, dynamic>> locationsList = [];
    try {
      CollectionReference pointsRef = FirebaseFirestore.instance.collection('pointsCategory');

      // Get all categories within the point
      CollectionReference categoriesRef = pointsRef.doc(widget.PointID).collection('places');
      QuerySnapshot categoriesSnapshot = await categoriesRef.get();
      for (var categoryDoc in categoriesSnapshot.docs) {
        String categoryId = categoryDoc.id;
        CollectionReference locationsRef = categoriesRef.doc(categoryId).collection('locations');

        // Get all locations within the category
        QuerySnapshot locationsSnapshot = await locationsRef.get();
        for (var locationDoc in locationsSnapshot.docs) {
          Map<String, dynamic> locationData = locationDoc.data() as Map<String, dynamic>;
          locationsList.add({
            'placeId': locationDoc.id,
            'placeData': locationData,
            'categoryId': categoryId,
            'categoryName': categoryDoc['name'],
          });
        }
      }
      setState(() {
        allData = locationsList;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching locations: $e');
    }
  }

  Future<bool> isFavorite(String placeId) async {
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('favorites')
        .doc(widget.ID)
        .collection('locations')
        .doc(placeId)
        .get();
    return doc.exists;
  }

  Future<void> toggleFavorite(String placeId, Map<String, dynamic> placeData) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection('favorites')
        .doc(widget.ID)
        .collection('locations')
        .doc(placeId);

    if (await isFavorite(placeId)) {
      await docRef.delete();
    } else {
      placeData['PointID'] = widget.PointID;
      await docRef.set(placeData);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SafeArea(
        top: false,
        child: Container(
          color: Color(0xFFF7F6F0),
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView(
            shrinkWrap: true, // Ensure it takes the minimum height
            children: [
              headerImage(),
              titleSection('Categories'),
              categoryIcons(),
              titleSection('Top Places'),
              buildPlacesList(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: EnhancedBottomNavigationBar(),
    );
  }

  Widget headerImage() {
    return Padding(
      padding: EdgeInsets.only(bottom: 35),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(widget.PointImage),
          ),
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(16),
        child: Text(
          widget.PointName,
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.bold,
            fontSize: 48,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
    );
  }

  Widget titleSection(String title) {
    return Padding(
      padding: sectionSpacing,
      child: Text(
        title,
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget categoryIcons() {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: fetchPlaces(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data found'));
        } else {
          List<Map<String, dynamic>> placesList = snapshot.data!;
          return Container(
            height: 120, // Set a fixed height for the horizontal ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: placesList.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> place = placesList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CafesRestaurant(
                            ID: widget.ID,
                            PointID: widget.PointID,
                            CategoryName: place['placeData']['name'],
                            CategoryID: place['placeData']['id'],
                            PointName: widget.PointName,
                          )));
                    },
                    child: Column(
                      children: [
                        ClipOval(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Center(
                              child: Container(
                                child: Image.network(
                                  place['placeData']['image'],
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(Icons.error);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          child: Text(
                            place['placeData']['name'],
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  Widget buildPlacesList() {
    return Column(
      children: allData.map((place) {
        String placeId = place['placeId'];
        Map<String, dynamic> placeData = place['placeData'];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TripPageOv(
                  ID: widget.ID,
                  PointID: widget.PointID,
                  PointName: placeData['name'],
                  CategoryName: place['categoryName'],
                  CategoryID: place['categoryId'],
                ),
              ));
            },
            child: Card(
              color: Color(0xFFF5F9FC),
              margin: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.network(
                        placeData['image'] ?? '',
                        fit: BoxFit.fill,
                        width: double.maxFinite,
                        height: 200, // Constrain the height of the image
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FutureBuilder<bool>(
                            future: isFavorite(placeId),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              }
                              bool isFavorite = snapshot.data ?? false;
                              return IconButton(
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  toggleFavorite(placeId, placeData);
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      placeData['name'] ?? '',
                      style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      placeData['description'] ?? '',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  // Method to fetch places data for the selected category
  Future<List<Map<String, dynamic>>> fetchPlaces() async {
    List<Map<String, dynamic>> placesList = [];

    try {
      CollectionReference placesRef = FirebaseFirestore.instance.collection('pointsCategory').doc(widget.PointID).collection('places');
      QuerySnapshot placesSnapshot = await placesRef.get();

      for (var placeDoc in placesSnapshot.docs) {
        Map<String, dynamic> placeData = placeDoc.data() as Map<String, dynamic>;
        placesList.add({
          'placeId': placeDoc.id,
          'placeData': placeData,
        });
      }
    } catch (e) {
      print('Error fetching places: $e');
    }

    return placesList;
  }
}
