import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Beaches extends StatelessWidget {
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
                              'assets/vectors/image_9_x2.svg',
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
                                      'assets/vectors/mobile_signal_11_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child: SizedBox(
                                    width: 15.1,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/wifi_12_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.1,
                                    height: 11.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/battery_3_x2.svg',
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
                      child: SizedBox(
                        width: 207.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
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
                                    'assets/vectors/back_7_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 18, 0, 6),
                              child: Text(
                                'Beaches',
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
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rectangle_41814.png',
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
                                                'assets/vectors/vector_59_x2.svg',
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
                                          'assets/vectors/vector_1523_x2.svg',
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
                                  margin: EdgeInsets.fromLTRB(0, 2, 10, 0),
                                  child: SizedBox(
                                    width: 222,
                                    child: Text(
                                      'IJmuiden',
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
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
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
                                            'assets/vectors/subtract_10_x2.svg',
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
                            margin: EdgeInsets.fromLTRB(10, 0, 34.6, 0),
                            child: Text(
                              ' Located at the mouth of Amsterdam’s River IJ, this beach is a popular water sports destination—from kitesurfing and paddleboarding to blokarting',
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
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rectangle_41841.png',
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
                                                'assets/vectors/vector_26_x2.svg',
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
                                          'assets/vectors/vector_1524_x2.svg',
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
                                      'Wijk Aan Zee',
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
                                            'assets/vectors/subtract_20_x2.svg',
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
                            margin: EdgeInsets.fromLTRB(8, 0, 6, 0),
                            child: Text(
                              'The best ‘surf’ beach close to Amsterdam (yes, the Netherlands get surf) also offers the clearest water along the coast.  You can sign up for surfing lessons at one of the schools along the beach.',
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
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 65),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rectangle_41811.png',
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
                                                'assets/vectors/vector_24_x2.svg',
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
                                          'assets/vectors/vector_1515_x2.svg',
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
                                  margin: EdgeInsets.fromLTRB(0, 1, 10, 0),
                                  child: SizedBox(
                                    width: 222,
                                    child: Text(
                                      'NDSM',
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
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
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
                                            'assets/vectors/subtract_19_x2.svg',
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
                              'assets/vectors/home_2_x2.svg',
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
                                            'assets/vectors/notification_5_x2.svg',
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
                                            'assets/vectors/vector_1521_x2.svg',
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
                                                    'assets/vectors/rectangle_41602_x2.svg',
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
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text(
                                        'Profile',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          height: 2.5,
                                          color: Color(0xFF000000),
                                        ),
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
                    'assets/vectors/vector_13_x2.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 170,
              child: SizedBox(
                height: 80,
                child: RichText(
                  text: TextSpan(
                    text: 'Over in hip Noord, there’s ',
                    style: GoogleFonts.getFont(
                      'Jockey One',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0x61000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'NDSM',
                        style: GoogleFonts.getFont(
                          'Jockey One',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          height: 1.3,
                        ),
                      ),
                      TextSpan(
                        text: ', an industrial hotspot home to art exhibitions, cultural happenings and PLLEK restaurant. Locals head here on the weekend to hang out at the small beachfront strip.',
                        style: GoogleFonts.getFont(
                          'Jockey One',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.4,
                          color: Color(0x61000000),
                        ),
                      ),
                    ],
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