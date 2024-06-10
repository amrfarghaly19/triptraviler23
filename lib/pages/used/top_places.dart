import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/trip_page_ov.dart';

class AllLocationsPage extends StatefulWidget {
  final String ID;
  final String PointID;

  AllLocationsPage({
    required this.ID,
    required this.PointID,
  });

  @override
  State<AllLocationsPage> createState() => _AllLocationsPageState();
}

class _AllLocationsPageState extends State<AllLocationsPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> allData = [];

  @override
  void initState() {
    super.initState();
    fetchAllLocations();
  }

  Future<void> fetchAllLocations() async {
    List<Map<String, dynamic>> locationsList = [];
    try {
      CollectionReference pointsRef = _firestore.collection('pointsCategory');

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
      });
    } catch (e) {
      print('Error fetching locations: $e');
    }
  }

  Future<bool> isFavorite(String placeId) async {
    DocumentSnapshot doc = await _firestore
        .collection('favorites')
        .doc(widget.ID)
        .collection('locations')
        .doc(placeId)
        .get();
    return doc.exists;
  }

  Future<void> toggleFavorite(String placeId, Map<String, dynamic> placeData) async {
    DocumentReference docRef = _firestore
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
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ClipOval(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Center(
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text('All Locations'),
      ),
      body: allData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: allData.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> place = allData[index];
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
        },
      ),
    );
  }
}
