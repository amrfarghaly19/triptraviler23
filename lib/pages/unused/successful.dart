import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Successful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 51, 0, 27),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 376,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(22, 0, 22, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7.5, 4.9),
                            width: 18.5,
                            height: 24.1,
                            child: SizedBox(
                              width: 18.5,
                              height: 24.1,
                              child: SvgPicture.asset(
                                'assets/vectors/oval_1_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
                            child: Text(
                              'Trip Location ',
                              style: GoogleFonts.getFont(
                                'Josefin Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xAD000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(22, 0, 36, 7),
                    child: Text(
                      '9WH3+HM6 Amsterdam, Netherlands',
                      style: GoogleFonts.getFont(
                        'Jockey One',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1, 9),
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
                    child: Stack(
                      children: [
                        Positioned(
                          left: -1,
                          right: -1.5,
                          top: -8,
                          bottom: -38,
                          child: SizedBox(
                            width: 375,
                            height: 526,
                            child: SvgPicture.asset(
                              'assets/vectors/object_x2.svg',
                            ),
                          ),
                        ),
                  Container(
                          padding: EdgeInsets.fromLTRB(1, 8, 1.5, 38),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0.5, 0, 0, 18),
                                child: Align(
                                  alignment: Alignment.topCenter,
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
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 29),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 14.1, 8.9),
                                        child: SizedBox(
                                          width: 49.7,
                                          height: 23,
                                          child: SvgPicture.asset(
                                            'assets/vectors/car_black_side_silhouette_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 19, 2),
                                            child: Text(
                                              'Just go',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFF242E42),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Near by you',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFFC8C7CC),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 12.1, 14.4, 9.6),
                                        child: SizedBox(
                                          width: 49.4,
                                          height: 18.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/van_black_transport_side_view_pointing_to_left_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                            child: Text(
                                              'Limousine',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '0.2 km',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                child: SizedBox(
                                  width: 372.5,
                                  height: 2,
                                  child: SvgPicture.asset(
                                    'assets/vectors/line_8_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8.1, 14, 10.7),
                                        child: SizedBox(
                                          width: 49.8,
                                          height: 21.3,
                                          child: SvgPicture.asset(
                                            'assets/vectors/convertible_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                            child: Text(
                                              'Luxury',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFF242E42),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 5.1, 0),
                                            child: Text(
                                              '0.4 km',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFFC8C7CC),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                                child: SizedBox(
                                  width: 372.5,
                                  height: 2,
                                  child: SvgPicture.asset(
                                    'assets/vectors/line_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(19.4, 0, 19.4, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6.2, 14.2, 11.9),
                                        child: SizedBox(
                                          width: 49.1,
                                          height: 21.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/car_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                              child: Text(
                                                'ElectricCar',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17,
                                                  color: Color(0xFF242E42),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                '0.45 km',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Color(0xFFC8C7CC),
                                                ),
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
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                                child: SizedBox(
                                  width: 372.5,
                                  height: 2,
                                  child: SvgPicture.asset(
                                    'assets/vectors/line_3_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2.1, 14, 2.4),
                                        child: SizedBox(
                                          width: 49.9,
                                          height: 35.4,
                                          child: SvgPicture.asset(
                                            'assets/vectors/single_motorbike_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 18, 2),
                                            child: Text(
                                              'Bike',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFF242E42),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '0.48 km',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFFC8C7CC),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                                child: SizedBox(
                                  width: 372.5,
                                  height: 2,
                                  child: SvgPicture.asset(
                                    'assets/vectors/line_6_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4, 14.1, 9.9),
                                        child: SizedBox(
                                          width: 49.7,
                                          height: 26.1,
                                          child: SvgPicture.asset(
                                            'assets/vectors/car_black_side_silhouette_3_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                            child: Text(
                                              'Taxi  4 seat',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFF242E42),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '0.5 km',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFFC8C7CC),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                                child: SizedBox(
                                  width: 372.5,
                                  height: 2,
                                  child: SvgPicture.asset(
                                    'assets/vectors/line_2_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.9, 0, 18.9, 11),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 14.2, 10.4),
                                        child: SizedBox(
                                          width: 49.6,
                                          height: 23.6,
                                          child: SvgPicture.asset(
                                            'assets/vectors/minivan_car_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                            child: Text(
                                              'Taxi  7 seat',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Color(0xFF242E42),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '0.67 km',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFFC8C7CC),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 372.5,
                                height: 2,
                                child: SvgPicture.asset(
                                  'assets/vectors/line_12_x2.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1, 0, 0, 16),
                    child: Opacity(
                      opacity: 0.95,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        child: Container(
                          width: 375,
                          height: 68,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
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
                        padding: EdgeInsets.fromLTRB(0, 0, 1, 0),
                        child: Text(
                          'Confirm',
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
                ],
              ),
            ),
            Positioned(
              right: 4,
              bottom: 106,
              child: SizedBox(
                width: 40,
                height: 40,
                child: SvgPicture.asset(
                  'assets/vectors/call_x2.svg',
                ),
              ),
            ),
            Positioned(
              left: 82,
              bottom: 103,
              child: SizedBox(
                width: 16,
                height: 16,
                child: SvgPicture.asset(
                  'assets/vectors/shape_7_x2.svg',
                ),
              ),
            ),
            Positioned(
              left: 80,
              bottom: 122,
              child: SizedBox(
                height: 20,
                child: Text(
                  'Gregory Smith',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Color(0xFF242E42),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 97,
              child: SizedBox(
                width: 50,
                height: 50,
                child: SvgPicture.asset(
                  'assets/images/oval_2.png.png',
                 // 'assets/vectors/oval_22_x2.svg',
                ),
              ),
            ),
            Positioned(
              left: 103,
              bottom: 100,
              child: SizedBox(
                height: 18,
                child: Text(
                  '4.9',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFFC8C7CC),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 89,
              bottom: 161,
              child: Container(
                height: 38,
                padding: EdgeInsets.fromLTRB(8, 0, 6.1, 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x75000000)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  '“Your driver will be”',
                  style: GoogleFonts.getFont(
                    'Jockey One',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 1,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xA1D9D9D9),
                ),
                child: SizedBox(
                  width: 374,
                  height: 812,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(28, 0, 26, 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 240),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1A000000),
                                offset: Offset(0, -5),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(22.2, 25, 20.2, 18),
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
                                        margin: EdgeInsets.fromLTRB(0, 0, 2, 18),
                                        width: 96,
                                        height: 96,
                                        child: SizedBox(
                                          width: 96,
                                          height: 96,
                                          child: SvgPicture.asset(
                                            'assets/vectors/shape_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 1, 19),
                                        child: Text(
                                          'Booking Successful',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Color(0xFF242E42),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                        child: Text(
                                 """         'Your private driver will be there half an hour before the scheduled time. 
                                      be ready',
                                        """,
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Jomhuria',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 22,
                                            color: Color(0x63000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                                        child: SizedBox(
                                          width: 200.4,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                child: SizedBox(
                                                  width: 155.8,
                                                  child: Text(
                                                    'Cancel',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 17,
                                                      color: Color(0xD1000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Done',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17,
                                                  color: Color(0xFF6257AE),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: -18,
                                  child: SizedBox(
                                    width: 3,
                                    height: 59,
                                    child: SvgPicture.asset(
                                      'assets/vectors/container_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 134,
                          height: 5,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 36,
              right: 14.7,
              top: 16,
              child: SizedBox(
                width: 324.3,
                height: 16,
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
                                  'assets/vectors/cellular_connection_2_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                              child: SizedBox(
                                width: 15.3,
                                height: 11,
                                child: SvgPicture.asset(
                                  'assets/vectors/wifi_34_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: SizedBox(
                                width: 24.3,
                                height: 11.3,
                                child: SvgPicture.asset(
                                  'assets/vectors/battery_7_x2.svg',
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
          ],
        ),
      ),
    );
  }
}