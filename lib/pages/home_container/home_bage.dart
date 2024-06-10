import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/globe_coordinates.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_earth_globe/point.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:location/location.dart';
import 'package:rate/rate.dart';
import 'package:untitled3445/localization/app_localization.dart';
import 'package:untitled3445/pages/used/city_page.dart';
import '../../class/countries.dart';
import '../../widgets/bottom_navigation_bar.dart';
import '../used/notifications_page.dart';
import '../used/trip_page_ov.dart';


class HomeBage extends StatefulWidget {
  final String ID, Name;

  HomeBage({required this.ID, required this.Name});

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {
  final FlutterEarthGlobeController _controller = FlutterEarthGlobeController();
  List<Point> points = [];
  List<String> Images = [];

  String SelectedID = "";
  String SelectedName = "";
  String SelectedImage = "";

  var snapshot;

  List<String> locationNames = [];


  Map<String, Map<String, dynamic>> locationDataMap = {};
  bool isLoading = true;


  Future<void> fetchLocations() async {
    List<String> locations = await fetchLocationNames();
    setState(() {
      locationNames = locations;
      isLoading = false;
    });
  }


  Future<LocationData?> getUserLocation() async {
    Location location = new Location();

    try {
      bool _serviceEnabled;
      PermissionStatus _permissionGranted;

      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          return null;
        }
      }

      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          return null;
        }
      }

      return await location.getLocation();
    } catch (e) {
      print('Failed to get location: $e');
      return null;
    }
  }

  Future<void> _saveUserLocation() async {
    try {
      LocationData? locationData = await getUserLocation();
      if (locationData != null) {
        await FirebaseFirestore.instance.collection('users').doc(widget.ID).update({
          'latitude': locationData.latitude,
          'longitude': locationData.longitude,
          'timestamp': FieldValue.serverTimestamp(),
        });
        print("Location saved: ${locationData.latitude}, ${locationData.longitude}");
      } else {
        print("Location data is null");
      }
    } catch (e) {
      print('Failed to save location: $e');
    }
  }

  Widget? customLabelBuilder(BuildContext context, Point point, bool isHovering, bool isVisible) {
    if (!isVisible) {
      return null;
    }
    return InkWell(
      onTap: () {
        setState(() {
          SelectedID = point.id;
          SelectedName = point.label!;
          int selectedIndex = int.parse(SelectedID);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CityPage(
                  ID: widget.ID,
                  PointID: SelectedID,
                  PointName: SelectedName,
                  PointImage: Images[selectedIndex])));
        });
      },
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(milliseconds: 100),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            point.label ?? 'no_label'.tr(context),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> fetchImagesFromFirestore() async {
    try {
      var collection = FirebaseFirestore.instance.collection('points');
      var snapshot = await collection.get();
      for (var doc in snapshot.docs) {
        if (doc.data().containsKey('image') && doc['image'] is String) {
          Images.add(doc['image']);
        } else {
          print('Invalid image data: ${doc.data()}');
        }
      }
      print(Images);
    } catch (e) {
      print('Error fetching images: $e');
    }
  }

  Future<List<Point>> fetchPointsFromFirestore() async {
    var collection = FirebaseFirestore.instance.collection('points');
    var snapshot = await collection.get();

    for (var doc in snapshot.docs) {
      double latitude = doc['latitude'];
      double longitude = doc['longitude'];
      String label = doc['label'];
      String id = doc['id'];
      String image = doc['image'];

      Point point = Point(
        coordinates: GlobeCoordinates(latitude, longitude),
        label: label,
        id: id,
        style: PointStyle(size: 4, color: Colors.white),
        isLabelVisible: true,
        labelBuilder: customLabelBuilder,
        onTap: () {
          print('Point tapped at $label');
        },
      );
      points.add(point);
    }
    return points;
  }

  @override
  initState() {
    fetchLocations();
    _controller.onLoaded = () {
      _controller.loadSurface(
        Image.asset(
          'assets/2k_earth-day.jpg',
        ).image,
      );
    };
    fetchImagesFromFirestore();
    fetchPointsFromFirestore();
    print("ID ${widget.ID}");
    _saveUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    for (var Point in points) {
      _controller.addPoint(Point);
    }
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xFFF7F6F0),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Stack(
          //    mainAxisAlignment: MainAxisAlignment.start,
          //    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                earthImageSection(),
                Column(
                  children: [
                    WelcomeMessage(),
                    SearchBar(),
                    SizedBox(height: 20),
                    additionalSection(),
                  //  SizedBox(height: 500),
                  //  additionalSection(),
                  ],
                ),
              /*
               */
              //  SizedBox(height: 10),

              //  popularCategories(),

               /* ,
               */

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget SearchBar() {
    return /*Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 50,
        child: TextField(
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
        ),
      ),
    );*/

     /* Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 50,
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              }
              return locationNames.where((String option) {
                return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
              });
            },
            fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
              return TextField(
                controller: textEditingController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: 'search',
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
              print('You just selected $selection');
            },
          ),
        ),
      );*/

      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Container(
          height: 50,
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              }
              return locationNames.where((String option) {
                return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
              });
            },
            fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
              return TextField(
                controller: textEditingController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: 'search',
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
              Map<String, dynamic> placeData = locationDataMap[selection]!;
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TripPageOv(
                  ID: widget.ID,
                  PointID: placeData['PointID'],
                  PointName: placeData['PointName'],
                  CategoryName: placeData['CategoryName'],
                  CategoryID: placeData['CategoryID'],
                ),
              ));
            },
          ),
        ),
      );
  }

  Widget WelcomeMessage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/images/pink_and_black_modern_initials_logo_design_1.png'),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${'hi'.tr(context)} ${widget.Name ?? ''},',
                    style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'good_afternoon'.tr(context),
                    style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
         IconButton(
           onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(
               builder: (context) =>NotificationsPage()
             ));
    },
           icon:
           Icon( Icons.notifications_active_outlined,
           size: 24,),
         ),
        ],
      ),
    );
  }
/*

  Widget popularCategories() {
    return Container(
      height: 40,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 5),
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return categoryButton('popular'.tr(context));
          } else if (index == 1) {
            return categoryButton('most_viewed'.tr(context));
          } else {
            return categoryButton('recommended'.tr(context));
          }
        },
      ),
    );
  }
*/

  Widget earthImageSection() {
    return Container(
      width: 400,
      height: MediaQuery.of(context).size.height/1.2,
      child: FlutterEarthGlobe(
        onZoomChanged: (zoom) {
          setState(() {});
        },
        onTap: (coordinates) {
          setState(() {});
        },
        onHover: (coordinates) {
          if (coordinates == null) return;
          setState(() {});
        },
        controller: _controller,
        radius: 70,
      ),
    );
  }

  Widget additionalSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(59),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'choose_your_amazing_destination'.tr(context),
              style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }

  Widget iconAsset(String asset, double width, double height) {
    return Container(
      width: width,
      height: height,
      child: SvgPicture.asset(asset),
    );
  }

  Widget categoryButton(String text) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(59),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
  Future<List<String>> fetchLocationNames() async {
    List<String> names = [];
    Map<String, Map<String, dynamic>> dataMap = {};

    CollectionReference pointsCollection = FirebaseFirestore.instance.collection('points');
    QuerySnapshot pointsSnapshot = await pointsCollection.get();

    for (QueryDocumentSnapshot pointDoc in pointsSnapshot.docs) {
      String pointID = pointDoc.id;

      CollectionReference pointsCategoryCollection = FirebaseFirestore.instance
          .collection('pointsCategory')
          .doc(pointID)
          .collection('places');
      QuerySnapshot pointsCategorySnapshot = await pointsCategoryCollection.get();

      for (QueryDocumentSnapshot categoryDoc in pointsCategorySnapshot.docs) {
        String categoryID = categoryDoc.id;

        CollectionReference locationsCollection = FirebaseFirestore.instance
            .collection('pointsCategory')
            .doc(pointID)
            .collection('places')
            .doc(categoryID)
            .collection('locations');
        QuerySnapshot locationsSnapshot = await locationsCollection.get();

        for (QueryDocumentSnapshot locationDoc in locationsSnapshot.docs) {
          Map<String, dynamic> locationData = locationDoc.data() as Map<String, dynamic>;

          if (locationData.containsKey('name')) {
            String locationName = locationData['name'];

            names.add(locationName);
            dataMap[locationName] = {
              'PointID': pointID,
              'PointName': (pointDoc.data() as Map<String, dynamic>).containsKey('name')
                  ? (pointDoc.data() as Map<String, dynamic>)['name']
                  : '',
              'CategoryID': categoryID,
              'CategoryName': (categoryDoc.data() as Map<String, dynamic>).containsKey('name')
                  ? (categoryDoc.data() as Map<String, dynamic>)['name']
                  : '',
              ...locationData,
            };
          }
        }
      }
    }

    setState(() {
      locationNames = names;
      locationDataMap = dataMap;
      isLoading = false;
    });

    return names;
  }

}
