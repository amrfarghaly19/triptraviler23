/*
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class DriverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 41),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/screenshot_202405030427231.png',
                  ),
                ),
              ),
              child: SizedBox(
                width: 412,
                child: Container(
                  padding: EdgeInsets.fromLTRB(29, 16, 36.7, 491),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 324.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '9:4',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.3,
                                            letterSpacing: -0.3,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '1',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1.3, 0, 3.3),
                                  child: SizedBox(
                                    width: 66.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0.3, 5, 0.3),
                                          child: SizedBox(
                                            width: 17,
                                            height: 10.7,
                                            child: SvgPicture.asset(
                                              'assets/vectors/cellular_connection_8_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                          child: SizedBox(
                                            width: 15.3,
                                            height: 11,
                                            child: SvgPicture.asset(
                                              'assets/vectors/wifi_31_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: SizedBox(
                                            width: 24.3,
                                            height: 11.3,
                                            child: SvgPicture.asset(
                                              'assets/vectors/battery_31_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 324,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 46, 182),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF000000)),
                                  borderRadius: BorderRadius.circular(177),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/image_1.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                ),
                              ),
                              SizedBox(
                                width: 230,
                                height: 230,
                                child: SvgPicture.asset(
                                  'assets/vectors/ic_current_x2.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: -1,
              bottom: -1,
              child: Opacity(
                opacity: 0.95,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, -5),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: 376,
                    height: 251,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 13, 1, 1),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9B9B9B),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 57,
                                      height: 6,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 235.6, 3),
                                  child: Text(
                                    'PICKUP',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Color(0xFFC8C7CC),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 145.6, 0),
                                  child: Text(
                                    'My current location',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Color(0xFF242E42),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(24, 0, 16, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                                        child: SizedBox(
                                          width: 3,
                                          height: 53,
                                          child: SvgPicture.asset(
                                            'assets/vectors/container_3_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 17, 0, 9),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                                                child: SizedBox(
                                                  width: 309,
                                                  height: 3,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/line_10_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Trip Location ',
                                                  style: GoogleFonts.getFont(
                                                    'Josefin Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13,
                                                    color: Color(0x61000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 25.9, 30),
                                  child: Text(
                                    '9WH3+HM6 Amsterdam, Netherlands',
                                    style: GoogleFonts.getFont(
                                      'JejuGothic',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 15, 7),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: LinearGradient(
                                        begin: Alignment(-1, 0),
                                        end: Alignment(1, 0),
                                        colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
                                        stops: <double>[0, 0.134, 1],
                                      ),
                                    ),
                                    child: Container(
                                      child: Text(
                                        'Next',
                                        style: GoogleFonts.getFont(
                                          'Jockey One',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 32,
                                          color: Color(0xFFF5F9FC),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  child: Container(
                                    height: 34,
                                    padding: EdgeInsets.fromLTRB(1, 20, 0, 9),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF000000),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Container(
                                        width: 134,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 109.9,
                            child: Container(
                              width: 18.5,
                              height: 24.1,
                              child: SizedBox(
                                width: 18.5,
                                height: 24.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/oval_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


*/


import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:untitled3445/pages/used/select_car_page.dart';

class DriverPage extends StatefulWidget {

  final String ID;
  final String PointID, CategoryName, CategoryID, PointName,tourName,tourRate,photo,rate,locationName,price;

  DriverPage({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
    required this.tourName,
    required this.tourRate,
    required this.photo,
    required this.rate,
    required this.locationName,
    required this.price
  });
  @override
  State<DriverPage> createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
    //  _getCurrentLocation();
  }

  // Define your location and the other location
  late LatLng myLocation ; // Example: Egypt
  late LatLng itLocation ; // Example: Mount Everest

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            FlutterMap(
              mapController: MapController(

              ),

              options: MapOptions(
                initialCenter: LatLng(26, 30),
                initialZoom: 8,

              ),

              children: [
                TileLayer(
                  urlTemplate: 'https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',    userAgentPackageName: 'dev.fleaflet.flutter_map.example',

                  // Plenty of other options available!
                ),
                /* PolylineLayer(
                  polylines: [
                    Polyline(
                      points: [myLocation, itLocation],
                      strokeWidth: 3.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
                MarkerLayer(
                  markers: [
                    buildPin(myLocation, ),
                    buildPin(itLocation, ),
                  ],
                ),*/

              ],
            ),

          ],
        ),
      ),
    );


  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.5,
          child: Opacity(
            opacity: 0.95,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A000000),
                    offset: Offset(0, -5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 13, 1, 1),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 9),
                        width: 57,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Color(0xFF9B9B9B),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 0, 16, 0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset('assets/vectors/container_3_x2.svg', width: 3, height: 53),
                                SizedBox(width: 23),
                        SvgPicture.asset('assets/vectors/ic_pin.svg', width: 18.518518447875977,
                          height: 24.08311653137207,),

                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PICKUP',
                                    style: GoogleFonts.robotoCondensed(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Color(0xFFC8C7CC),
                                    ),
                                  ),
                                  Text(
                                    'My current location',
                                    style: GoogleFonts.robotoCondensed(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Color(0xFF242E42),
                                    ),
                                  ),
                                  SizedBox(height: 23),

                                  SvgPicture.asset('assets/vectors/line_10_x2.svg', width: double.infinity, height: 3),
                                  Text(
                                    'Trip Location ',
                                    style: GoogleFonts.josefinSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Color(0x61000000),
                                    ),
                                  ),
                                  Text(
                                    '9WH3+HM6 Amsterdam, Netherlands',
                                    style: GoogleFonts.josefinSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      InkWell(
                        onTap: (){

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectCarPage(
                                ID: widget.ID,
                                PointID: widget.PointID,
                                PointName: widget.PointName,
                                CategoryName: widget.CategoryName,
                                CategoryID:widget.CategoryID,
                                tourName: widget.tourName,
                                tourRate: widget.tourRate,
                                photo: widget.photo,
                                rate: widget.rate,
                                  locationName: widget.locationName,
                                price: widget.price,


                              )));

                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 15, 7),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: LinearGradient(
                                begin: Alignment(-1, 0),
                                end: Alignment(1, 0),
                                colors: [Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Next',
                                style: GoogleFonts.jockeyOne(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  color: Color(0xFFF5F9FC),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}
