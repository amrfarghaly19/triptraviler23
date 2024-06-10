import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled3445/pages/used/login.dart';
import 'package:untitled3445/pages/used/splash_screen.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body:
      Container(
        // height: MediaQuery.of(context).size.height/2.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/board3.png"),
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
                  height: MediaQuery.of(context).size.height/2,
                  //  width: MediaQuery.of(context).size.width,
                /*  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/onboeard1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),*/),
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
      'Never travel alone again',
      style: GoogleFonts.josefinSans(
        fontWeight: FontWeight.w700,
        fontSize: 22,
        color: Color(0xFF000000),
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        " Our app connects you with experienced tour guides to accompany you on your trip, ensuring a rich and engaging travel experience.",
        textAlign: TextAlign.center,
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.w700,
          fontSize: 17,
          height: 1.3,
          color: Color(0xFF000000),
        ),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(isActive: false),
        _buildDot(isActive: false),
        _buildDot(isActive: true),
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
      onTap: () async{
        // Handle button press

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('boarding', true);

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Login()));
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
            'Finish',
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