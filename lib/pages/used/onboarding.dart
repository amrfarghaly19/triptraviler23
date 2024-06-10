/*
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Stack(
              children: [
                  Positioned(
                    left: -57.2,
                    top: -17.2,
                    child: SizedBox(
                      width: 410.5,
                      height: 812,
                      child: SvgPicture.asset(
                        'assets/vectors/layer_12_x2.svg',
                      ),
                    ),
                  ),
            SizedBox(
                  width: 377.5,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24.2, 17.2, 7.5, 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(2.8, 0, 18, 416.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                                width: 28.4,
                                height: 11.1,
                                child: SizedBox(
                                  width: 28.4,
                                  height: 11.1,
                                  child: SvgPicture.asset(
                                    'assets/vectors/image_23_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.2, 0, 0),
                                child: SizedBox(
                                  width: 66,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0.3, 5, 0.3),
                                        child: SizedBox(
                                          width: 16.8,
                                          height: 10.7,
                                          child: SvgPicture.asset(
                                            'assets/vectors/mobile_signal_5_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                        child: SizedBox(
                                          width: 15.1,
                                          height: 11,
                                          child: SvgPicture.asset(
                                            'assets/vectors/wifi_6_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: SizedBox(
                                          width: 24.1,
                                          height: 11.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/battery_16_x2.svg',
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
                          margin: EdgeInsets.fromLTRB(0, 0, 13.2, 45.5),
                          child: Text(
                            'Easy transportation',
                            style: GoogleFonts.getFont(
                              'Josefin Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              height: 1,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 13.2, 19.5),
                          child: Text(
                            'Our app offers premium transportation services, ensuring comfortable rides to your destinations and streamlining your travel experience with professional efficiency',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Josefin Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              height: 1.3,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3.8, 0, 0, 60),
                          child: SizedBox(
                            width: 56,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Opacity(
                                    opacity: 0.1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF080E1E),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                      Positioned(
                                        top: -4,
                                        child: ImageFiltered(
                                          imageFilter: ImageFilter.blur(
                                            sigmaX: 5,
                                            sigmaY: 5,
                                          ),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                Container(
                                      width: 20,
                                      height: 20,
                                      padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF080E1E),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: Container(
                                          width: 12,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Opacity(
                                    opacity: 0.1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF080E1E),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1.8, 0, 0, 32),
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
                              padding: EdgeInsets.fromLTRB(0, 9, 11, 16),
                              child: Text(
                                'Next',
                                style: GoogleFonts.getFont(
                                  'Jockey One',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  height: 0.6,
                                  color: Color(0xFFF5F9FC),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 14.2, 0),
                          width: 134,
                          height: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF080E1E),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              width: 134,
                              height: 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: -76,
              top: 113,
              child: SizedBox(
                width: 451,
                height: 304,
                child: SvgPicture.asset(
                  'assets/vectors/illustration_x2.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding_2.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body:
      Container(
       // height: MediaQuery.of(context).size.height/2.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Illustration2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          right: false,
          left: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  //  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Illustrationb2.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),),
                SizedBox(height: 10),
                _buildTitle(),
                SizedBox(height: 10),
                _buildDescription(),
                Spacer(),
                _buildIndicator(),
                SizedBox(height: 20),
                _buildNextButton(context),
                SizedBox(height: 20),

              ],
            ),
          ),
        ),
          ),

    );
  }



  Widget _buildTitle() {
    return Text(
      'Easy transportation',
      style: GoogleFonts.josefinSans(
        fontWeight: FontWeight.w700,
        fontSize: 22,
        color: Color(0xFF000000),
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      'Our app offers premium transportation services, ensuring comfortable rides to your destinations and streamlining your travel experience with professional efficiency.',
      textAlign: TextAlign.center,
      style: GoogleFonts.josefinSans(
        fontWeight: FontWeight.w700,
        fontSize: 17,
        height: 1.3,
        color: Color(0xFF000000),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(isActive: false),
        _buildDot(isActive: true),
        _buildDot(isActive: false),
      ],
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 15 : 10,
      height: isActive ? 15 : 10,
      decoration: BoxDecoration(
        color: Color(0xFF080E1E).withOpacity(isActive ? 1 : 0.1),
        borderRadius: BorderRadius.circular(12),
       // borderRadius: BorderRadius.circular(5),
        boxShadow: isActive
            ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ]
            : [],
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle button press

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Onboarding2()));
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
            stops: [0, 0.134, 1],
          ),
        ),
       // padding: EdgeInsets.symmetric(vertical: 16),
        child: Center(
          child: Text(
            'Next',
            style: GoogleFonts.jockeyOne(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Color(0xFFF5F9FC),
            ),
          ),
        ),
      ),
    );
  }


}
