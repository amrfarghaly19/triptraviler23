import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/trip_page_ov.dart';

class CafesRestaurant extends StatefulWidget {
  final String ID;
  final String PointID, CategoryName, CategoryID, PointName;

  CafesRestaurant({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
  });

  @override
  State<CafesRestaurant> createState() => _CafesRestaurantState();
}

class _CafesRestaurantState extends State<CafesRestaurant> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    fetchPlaces();
    super.initState();
  }

  Future<List<Map<String, dynamic>>> fetchPlaces() async {
    List<Map<String, dynamic>> placesList = [];
    try {
      CollectionReference placesRef = _firestore
          .collection('pointsCategory')
          .doc(widget.PointID)
          .collection('places')
          .doc(widget.CategoryID)
          .collection('locations');
      QuerySnapshot placesSnapshot = await placesRef.get();

      for (var placeDoc in placesSnapshot.docs) {
        Map<String, dynamic> placeData =
            placeDoc.data() as Map<String, dynamic>;
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

  Future<bool> isFavorite(String placeId) async {
    DocumentSnapshot doc = await _firestore
        .collection('favorites')
        .doc(widget.ID)
        .collection('locations')
        .doc(placeId)
        .get();
    return doc.exists;
  }

  Future<void> toggleFavorite(
      String placeId, Map<String, dynamic> placeData) async {
    DocumentReference docRef = _firestore
        .collection('favorites')
        .doc(widget.ID)
        .collection('locations')
        .doc(placeId);

    if (await isFavorite(placeId)) {
      await docRef.delete();
    } else {
      placeData['PointID'] = widget.PointID;
      placeData['PointName'] = widget.PointName;
      await docRef.set(placeData);

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
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
        title: Text(widget.CategoryName ?? ''),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 8.2, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FutureBuilder<List<Map<String, dynamic>>>(
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
                return Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: placesList.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> place = placesList[index];
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
                                PointName: widget.PointName,
                                CategoryName: placeData['name'],
                                CategoryID: placeData['id'],
                              ),
                            ));
                          },
                          child: Card(
                            color: Color(0xFFF5F9FC),
                            margin: EdgeInsets.all(8),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.network(
                                        placeData['image'] ?? '',
                                        fit: BoxFit.fill,
                                        width: double.maxFinite,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FutureBuilder<bool>(
                                            future: isFavorite(placeId),
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return CircularProgressIndicator();
                                              }
                                              bool isFavorite =
                                                  snapshot.data ?? false;
                                              return IconButton(
                                                icon: Icon(
                                                  isFavorite
                                                      ? Icons.favorite
                                                      : Icons.favorite_border,
                                                  color: Colors.red,
                                                ),
                                                onPressed: () {
                                                  toggleFavorite(
                                                      placeId, placeData);
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
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
