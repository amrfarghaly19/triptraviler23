
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled3445/pages/used/trip_page_ov.dart';
import '../../localization/app_localization.dart'; // Import localization

class FavoritesPage extends StatefulWidget {
  final String ID;

  FavoritesPage({required this.ID});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<String> favoriteLocationNames = [];
  Map<String, Map<String, dynamic>> favoriteLocationsMap = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFavoriteLocationNames();
  }

  Future<void> fetchFavoriteLocationNames() async {
    List<String> locationNames = [];
    Map<String, Map<String, dynamic>> locationsMap = {};
    try {
      CollectionReference favoritesRef = _firestore
          .collection('favorites')
          .doc(widget.ID)
          .collection('locations');
      QuerySnapshot favoritesSnapshot = await favoritesRef.get();

      for (var favoriteDoc in favoritesSnapshot.docs) {
        Map<String, dynamic> favoriteData = favoriteDoc.data() as Map<String, dynamic>;
        String locationName = favoriteData['name'] ?? '';
        locationNames.add(locationName);
        locationsMap[locationName] = favoriteData;
      }
    } catch (e) {
      print('Error fetching favorite location names: $e');
    }
    setState(() {
      favoriteLocationNames = locationNames;
      favoriteLocationsMap = locationsMap;
      isLoading = false;
    });
  }

  Future<List<Map<String, dynamic>>> fetchFavorites() async {
    List<Map<String, dynamic>> favoritesList = [];
    try {
      CollectionReference favoritesRef = _firestore
          .collection('favorites')
          .doc(widget.ID)
          .collection('locations');
      QuerySnapshot favoritesSnapshot = await favoritesRef.get();

      for (var favoriteDoc in favoritesSnapshot.docs) {
        Map<String, dynamic> favoriteData = favoriteDoc.data() as Map<String, dynamic>;
        favoritesList.add({
          'favoriteId': favoriteDoc.id,
          'favoriteData': favoriteData,
        });
      }
    } catch (e) {
      print('Error fetching favorites: $e');
    }
    return favoritesList;
  }

  Future<void> removeFavorite(String favoriteId) async {
    try {
      await _firestore
          .collection('favorites')
          .doc(widget.ID)
          .collection('locations')
          .doc(favoriteId)
          .delete();
      fetchFavoriteLocationNames(); // Refresh the location names after deletion
      setState(() {}); // Refresh the UI
    } catch (e) {
      print('Error removing favorite: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('favorites'.tr(context)),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  return favoriteLocationNames.where((String option) {
                    return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
                  });
                },
                fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: 'search'.tr(context),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                },
                onSelected: (String selection) {
                  Map<String, dynamic> selectedLocationData = favoriteLocationsMap[selection]!;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TripPageOv(
                      ID: widget.ID,
                      PointID: selectedLocationData['PointID'],
                      PointName: selectedLocationData['PointName'],
                      CategoryName: selectedLocationData['name'] ?? '',
                      CategoryID: selectedLocationData['id'],
                    ),
                  ));
                },
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: fetchFavorites(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('error'.tr(context) + ': ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('no_favorites_found'.tr(context)));
                } else {
                  List<Map<String, dynamic>> favoritesList = snapshot.data!;
                  return ListView.builder(
                    itemCount: favoritesList.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> favorite = favoritesList[index];
                      String favoriteId = favorite['favoriteId'];
                      Map<String, dynamic> favoriteData = favorite['favoriteData'];

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TripPageOv(
                              ID: widget.ID,
                              PointID: favoriteData['PointID'],
                              PointName: favoriteData['PointName'],
                              CategoryName: favoriteData['name'] ?? '',
                              CategoryID: favoriteData['id'],
                            ),
                          ));
                        },
                        child: Card(
                          margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: ListTile(
                            leading: Image.network(
                              favoriteData['image'] ?? '',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              favoriteData['name'] ?? '',
                              style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                            subtitle: Text(
                              favoriteData['description'] ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                removeFavorite(favoriteId);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
