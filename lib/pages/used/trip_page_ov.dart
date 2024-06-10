

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:untitled3445/pages/used/request_to_book.dart';
import 'package:untitled3445/pages/used/review_page.dart';


class TripPageOv extends StatefulWidget {
  final String ID;
  final String PointID, CategoryName, CategoryID, PointName;

  TripPageOv({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
  });

  @override
  _TripPageOvState createState() => _TripPageOvState();
}

class _TripPageOvState extends State<TripPageOv> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<Map<String, dynamic>> allData = [];
  bool isLoading = true;
  LatLng? myLocation;
  LatLng? itLocation;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    fetchLocations();
    _checkPermissionsAndGetLocation();
  }

  Marker buildPin(LatLng point) => Marker(
    point: point,
    width: 30,
    height: 30,
    child: GestureDetector(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tapped existing marker'),
          duration: Duration(seconds: 1),
          showCloseIcon: true,
        ),
      ),
      child: const Icon(Icons.location_pin, size: 60, color: Colors.black),
    ),
  );

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
        children: [
          if (allData.isNotEmpty) _buildBackgroundImage(),
          _buildTopRoundedContainer(),
        ],
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned(
      left: -83,
      top: 0,
      child: Container(
        width: 513,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(allData.isNotEmpty ? allData[0]['image'] ?? '' : ''),
          ),
        ),
      ),
    );
  }

  Widget _buildTopRoundedContainer() {
    return Positioned(
      top: 120,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Column(
          children: [
            if (allData.isNotEmpty) _buildDestinationTitle(),
            if (allData.isNotEmpty) _buildLocation(),
            TabBar(
              controller: _tabController,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Review'),
                Tab(text: 'Location'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Tab1(),
                  ReviewPage(ID: widget.ID, reviewID: allData.isNotEmpty ? allData[0]['reviewID'] ?? '' : ''),
                  TapMap(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget TapMap() {
    if (myLocation == null || itLocation == null) {
      // Handle the case where locations are null, maybe show a loading indicator or a message
      return Center(child: CircularProgressIndicator());
    }
    else {
      return  FlutterMap(
        mapController: MapController(),
        options: MapOptions(
          initialCenter: LatLng(myLocation!.latitude?? 0.0, myLocation!.longitude?? 0.0),
          initialZoom: 8,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          if (myLocation != null && itLocation != null)
            PolylineLayer(
              polylines: [
                Polyline(
                  points: [myLocation!, itLocation!],
                  strokeWidth: 3.0,
                  color: Colors.blue,
                ),
              ],
            ),
          if (myLocation != null && itLocation != null)
            MarkerLayer(
              markers: [
                buildPin(myLocation!),
                buildPin(itLocation!),
              ],
            ),
        ],
      );
    }

  }

  Widget Tab1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDescription(),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 8),
              child: RichText(
                text: TextSpan(
                  text: "Program included:",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xB5000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 20),
              child: RichText(
                text: TextSpan(
                  text: allData.isNotEmpty ? allData[0]['program'] ?? '' : '',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xB5000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 8),
              child: RichText(
                text: TextSpan(
                  text: "Price:",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xB5000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 20),
              child: RichText(
                text: TextSpan(
                  text: allData.isNotEmpty ? allData[0]['price'] ?? '' : '',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xB5000000),
                  ),
                ),
              ),
            ),
            Center(child: _buildBookTripButton(context,
                allData[0]['image']??"",
                allData[0]['rate']??"",
                allData[0]['name']??"",
                allData[0]['price']??""

            )),
          ],
        ),
      ),
    );
  }

  Widget Tab2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReviewPage(ID: widget.ID, reviewID: allData.isNotEmpty ? allData[0]['reviewID'] ?? '' : ''),
          ],
        ),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> fetchLocationsAsMap(String categoryId, String pointId) async {
    var result = await FirebaseFirestore.instance
        .collection('pointsCategory')
        .doc(pointId)
        .collection('places')
        .doc(categoryId)
        .collection('locations')
        .get();

    List<Map<String, dynamic>> locationsList = result.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    return locationsList;
  }

  Future<void> fetchLocations() async {
    var locations = await fetchLocationsAsMap(widget.CategoryID, widget.PointID);
    setState(() {
      allData = locations;
      if (allData.isNotEmpty) {
        itLocation = LatLng(allData[0]['latitude'].toDouble() ?? 0.0, allData[0]['longitude'].toDouble() ?? 0.0);
      }
      isLoading = false; // Update loading state
    });
  }

  Widget _tabContent(String text) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          text,
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xB5000000),
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Text(
        allData.isNotEmpty ? allData[0]['name'] ?? '' : '',
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildLocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/vectors/subtract_6_x2.svg',
            width: 14,
            height: 15.9,
          ),
          const SizedBox(width: 10),
          Text(
            widget.PointName ?? "",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0x61000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 0, 0, 20),
      child: RichText(
        text: TextSpan(
          text: allData.isNotEmpty ? allData[0]['description'] ?? '' : '',
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xB5000000),
          ),
        ),
      ),
    );
  }

  Widget _buildBookTripButton(BuildContext context,String Image, String rate, String locationName, String price) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestToBook(

          ID: widget.ID,
          PointID: widget.PointID,
          PointName: widget.PointName,
          CategoryName: widget.CategoryName,
          CategoryID:widget.CategoryID,
            photo:Image,
            price:price,
            rate:rate,
            locationName:locationName,
            carkind:"", tourName: '', tourRate: '',

        )));
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: const LinearGradient(
            begin: Alignment(-1, 0),
            end: Alignment(1, 0),
            colors: [Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
          ),
        ),
        child: Center(
          child: Text(
            'Book this trip',
            style: GoogleFonts.jockeyOne(
              fontSize: 25,
              color: Color(0xFFF5F9FC),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _checkPermissionsAndGetLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, request users to enable them.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try requesting permissions again.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can continue accessing the position of the device.
    try {
      Position position = await Geolocator.getCurrentPosition();
      if (mounted) { // Ensure the widget is still mounted before calling setState
        setState(() {
          myLocation = LatLng(position.latitude, position.longitude);
        });
      }
    } catch (e) {
      print("Failed to get current location: $e");
    }
  }
}
