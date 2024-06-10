import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class RegistrationCompleted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(24, 17.2, 7, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 18, 219.3),
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
                        'assets/vectors/image_6_x2.svg',
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
                                'assets/vectors/mobile_signal_14_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                            child: SizedBox(
                              width: 15.1,
                              height: 11,
                              child: SvgPicture.asset(
                                'assets/vectors/wifi_10_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: SizedBox(
                              width: 24.1,
                              height: 11.3,
                              child: SvgPicture.asset(
                                'assets/vectors/battery_24_x2.svg',
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
              margin: EdgeInsets.fromLTRB(0, 0, 16, 34),
              width: 96,
              height: 96,
              child: SizedBox(
                width: 96,
                height: 96,
                child: SvgPicture.asset(
                  'assets/vectors/shape_5_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 6, 267),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Text(
                      'Done',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.2,
                        color: Color(0xFF080E1E),
                      ),
                    ),
                  ),
                  Text(
                    'You have successfully completed your registration',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      height: 1.4,
                      color: Color(0xFF64646E),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
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
                  padding: EdgeInsets.fromLTRB(0, 9, 1, 16),
                  child: Text(
                    'Log in',
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
              margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
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
    );
  }
}