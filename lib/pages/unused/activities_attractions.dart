import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class ActivitiesAttractions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 8.2, 4, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 8,
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
            SizedBox(
              width: 375,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 0, 18, 36.3),
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
                              'assets/vectors/image_12_x2.svg',
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
                                      'assets/vectors/mobile_signal_9_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child: SizedBox(
                                    width: 15.1,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/wifi_11_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.1,
                                    height: 11.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/battery_26_x2.svg',
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
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 34),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 28.1, 0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x1A000000),
                                  offset: Offset(0, 5),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Container(
                              width: 44,
                              height: 44,
                              padding: EdgeInsets.fromLTRB(16, 11, 16, 11),
                              child: SizedBox(
                                width: 12,
                                height: 22,
                                child: SvgPicture.asset(
                                  'assets/vectors/back_10_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 18, 0, 6),
                            child: Text(
                              'Activities & Attractions',
                              style: GoogleFonts.getFont(
                                'Josefin Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 0, 7, 36),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFF5F9FC),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(9, 12),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/rectangle_41812.jpeg',
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(9.7, 13.3, 19.3, 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 167.5, 0, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 1.7, 1.7),
                                          width: 16.7,
                                          height: 16.5,
                                          child: SizedBox(
                                            width: 16.7,
                                            height: 16.5,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_62_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 1.3, 0, 0),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0x70000000)),
                                          ),
                                          child: Text(
                                            '5.0',
                                            style: GoogleFonts.getFont(
                                              'Josefin Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17,
                                              color: Color(0xFFF5F9FC),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 160.8),
                                    width: 27.5,
                                    height: 25,
                                    child: SizedBox(
                                      width: 27.5,
                                      height: 25,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_158_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11, 0, 11.3, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: SizedBox(
                                  width: 221,
                                  child: Text(
                                    'Bike Tour',
                                    style: GoogleFonts.getFont(
                                      'Josefin Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      height: 1,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0.1),
                                      width: 14,
                                      height: 15.9,
                                      child: SizedBox(
                                        width: 14,
                                        height: 15.9,
                                        child: SvgPicture.asset(
                                          'assets/vectors/subtract_14_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                      child: Text(
                                        'Amsterdam',
                                        style: GoogleFonts.getFont(
                                          'Josefin Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0x61000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(18, 0, 8, 0),
                          child: Text(
                            'Experience a piece of Dutch culture as you ride the streets of Amsterdam on a guided bike tour that highlights the rich history of the iconic canal-lined city.',
                            style: GoogleFonts.getFont(
                              'Jockey One',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.4,
                              color: Color(0x61000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 0, 7, 36),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFF5F9FC),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(9, 12),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 295,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/rectangle_4184.jpeg',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(9.7, 13.3, 19.3, 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 167.5, 0, 0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 1.7, 1.7),
                                                  width: 16.7,
                                                  height: 16.5,
                                                  child: SizedBox(
                                                    width: 16.7,
                                                    height: 16.5,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_35_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 1.3, 0, 0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0x70000000)),
                                                  ),
                                                  child: Text(
                                                    '5.0',
                                                    style: GoogleFonts.getFont(
                                                      'Josefin Sans',
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 17,
                                                      color: Color(0xFFF5F9FC),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 160.8),
                                            width: 27.5,
                                            height: 25,
                                            child: SizedBox(
                                              width: 27.5,
                                              height: 25,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_154_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 11.3, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: SizedBox(
                                          width: 222,
                                          child: Text(
                                            'Keukenhof',
                                            style: GoogleFonts.getFont(
                                              'Josefin Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              height: 1,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 4.1),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                              width: 14,
                                              height: 15.9,
                                              child: SizedBox(
                                                width: 14,
                                                height: 15.9,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/subtract_13_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.9),
                                              child: Text(
                                                'Amsterdam',
                                                style: GoogleFonts.getFont(
                                                  'Josefin Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: Color(0x61000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 4.4,
                            bottom: 4,
                            child: SizedBox(
                              height: 60,
                              child: Text(
                                'Prebook this Keukenhof admission ticket with round-trip shuttle services from Amsterdam and guarantee your self-guided visit to the popular botanical garden in Lisse. ',
                                style: GoogleFonts.getFont(
                                  'Jockey One',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color(0x61000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 0, 7, 108),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFF5F9FC),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(9, 12),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rectangle_41813.jpeg',
                                  ),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(9.7, 13.3, 19.3, 6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 167.5, 0, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 1.7, 1.7),
                                            width: 16.7,
                                            height: 16.5,
                                            child: SizedBox(
                                              width: 16.7,
                                              height: 16.5,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_25_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 1.3, 0, 0),
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Color(0x70000000)),
                                            ),
                                            child: Text(
                                              '5.0',
                                              style: GoogleFonts.getFont(
                                                'Josefin Sans',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                color: Color(0xFFF5F9FC),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 160.8),
                                      width: 27.5,
                                      height: 25,
                                      child: SizedBox(
                                        width: 27.5,
                                        height: 25,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_1513_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(8, 0, 11.3, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: SizedBox(
                                    width: 224,
                                    child: Text(
                                      'Zaanse Schans',
                                      style: GoogleFonts.getFont(
                                        'Josefin Sans',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        height: 1,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 5, 1.1),
                                        width: 14,
                                        height: 15.9,
                                        child: SizedBox(
                                          width: 14,
                                          height: 15.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/subtract_23_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                        child: Text(
                                          'Amsterdam',
                                          style: GoogleFonts.getFont(
                                            'Josefin Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0x61000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(7, 0, 26.3, 0),
                            child: Text(
                              'Discover the Dutch countryside on this full-day tour to Zaanse Schans, Edam, Volendam, and Marken, with round-trip transfer from central Amsterdam ensuring a hassle-free trip. ',
                              style: GoogleFonts.getFont(
                                'Jockey One',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.4,
                                color: Color(0x61000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: -2,
                          top: -1.2,
                          child: SizedBox(
                            width: 29,
                            height: 29,
                            child: SvgPicture.asset(
                              'assets/vectors/home_1_x2.svg',
                            ),
                          ),
                        ),
                  Container(
                          padding: EdgeInsets.fromLTRB(29, 5.2, 23.9, 9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0.6, 0, 0.6, 1),
                                child: SizedBox(
                                  width: 256.6,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 1.8, 0, 0),
                                        width: 24,
                                        height: 24,
                                        child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: SvgPicture.asset(
                                            'assets/vectors/notification_10_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 1.6),
                                        width: 26.6,
                                        height: 24.2,
                                        child: SizedBox(
                                          width: 26.6,
                                          height: 24.2,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_159_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4.6, 0, 2.4),
                                        child: SizedBox(
                                          width: 18.1,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(4.2, 0, 4.2, 1.8),
                                                width: 9.7,
                                                height: 9.7,
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(1.8),
                                                child: SizedBox(
                                                  width: 18.1,
                                                  height: 7.3,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/rectangle_41603_x2.svg',
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
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: SizedBox(
                                        width: 43,
                                        child: Text(
                                          'Home',
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8,
                                            height: 2.5,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Notifications',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        height: 2.5,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                    Text(
                                      'Add Trip',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        height: 2.5,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                    Text(
                                      'Favorites',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        height: 2.5,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                    Text(
                                      'Profile',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        height: 2.5,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 4.1, 0),
                                child: Align(
                                  alignment: Alignment.topCenter,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 159.8,
              bottom: 49.8,
              child: Container(
                width: 47.5,
                height: 47.5,
                child: SizedBox(
                  width: 47.5,
                  height: 47.5,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_45_x2.svg',
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