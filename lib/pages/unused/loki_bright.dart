import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class LokiBright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 8.2, 15, 8),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(12, 0, 7, 33.7),
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
                              'assets/vectors/image_20_x2.svg',
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
                                      'assets/vectors/mobile_signal_18_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child: SizedBox(
                                    width: 15.1,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/wifi_9_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.1,
                                    height: 11.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/battery_14_x2.svg',
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
                    margin: EdgeInsets.fromLTRB(4, 0, 4, 83.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 234.7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 15.4),
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
                                height: 36.7,
                                padding: EdgeInsets.fromLTRB(16, 9.2, 16, 9.2),
                                child: SizedBox(
                                  width: 12,
                                  height: 18.3,
                                  child: SvgPicture.asset(
                                    'assets/vectors/back_2_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 2.1, 0, 0),
                              child: Text(
                                'Loki Bright',
                                style: GoogleFonts.getFont(
                                  'Jomhuria',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 50,
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
                    margin: EdgeInsets.fromLTRB(0, 0, 1, 49),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, -5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 559,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(18, 13, 18, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5.5, 0),
                                  child: Text(
                                    '5.0',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      height: 2.2,
                                      color: Color(0xFF475467),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                  width: 10,
                                  height: 9.9,
                                  child: SizedBox(
                                    width: 10,
                                    height: 9.9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_28_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                  width: 10,
                                  height: 9.9,
                                  child: SizedBox(
                                    width: 10,
                                    height: 9.9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_34_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                  width: 10,
                                  height: 9.9,
                                  child: SizedBox(
                                    width: 10,
                                    height: 9.9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_23_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                  width: 10,
                                  height: 9.9,
                                  child: SizedBox(
                                    width: 10,
                                    height: 9.9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_50_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 0, 10),
                                  width: 10,
                                  height: 9.9,
                                  child: SizedBox(
                                    width: 10,
                                    height: 9.9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_19_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: -1,
                              top: 27,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x42000000),
                                ),
                                child: Container(
                                  width: 107,
                                  height: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
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
                        padding: EdgeInsets.fromLTRB(22, 0, 30.9, 0),
                        child: Text(
                          'Select this friendly guide ',
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
                  Align(
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
                ],
              ),
            ),
            Positioned(
              left: 5,
              bottom: 122,
              child: SizedBox(
                height: 32,
                child: Text(
                  'Mobile Number: 06-28151929',
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                    color: Color(0xE3000000),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 136.8,
              child: SizedBox(
                width: 95,
                height: 88.9,
                child: SvgPicture.asset(
                  'assets/images/oval_21.jpeg.jpeg',
                 // 'assets/vectors/oval_24_x2.svg',
                ),
              ),
            ),
            Positioned(
              bottom: 125,
              child: SizedBox(
                height: 480,
                child: Text(
                  """'Hello, I am Loki Bright, 25 years old, from Amsterdam. I study medicine and work in the field of photography and graphic design. I would like to be your friendly tour guide in Amsterdam and show you all the distinctive and wonderful landmarks of my country that people from all countries come to see. Let’s spend a good time together as friends, not as tourist guide in Amsterdam only. '
                      'Let's show you the hidden gems of Amsterdam.',""",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                    color: Color(0xA8000000),
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