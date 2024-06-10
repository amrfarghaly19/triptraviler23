/*



import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
        height: height,
          width: width,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF7F6F0)),
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  left: width/2,
                 
                  top: 272,
                  child: Container(
                    width: 154,
                    height: 148,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/154x148"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(111),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 375,
                          height: 44,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 284,
                                top: 17.33,
                                child: Container(
                                  width: 66,
                                  height: 11.34,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 41.91,
                                        top: 0,
                                        child: Container(
                                          width: 24.09,
                                          height: 11.33,
                                          child: Stack(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 21.81,
                                        top: 0,
                                        child: Container(
                                          width: 15.12,
                                          height: 10.96,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/15x11"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0.34,
                                        child: Container(
                                          width: 16.83,
                                          height: 10.67,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/17x11"),
                                              fit: BoxFit.fill,
                                            ),
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 778,
                  child: Container(
                    width: 375,
                    height: 34,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 121,
                          top: 21,
                          child: Container(
                            width: 134,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: Color(0xFF080E1E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 458,
                  child: SizedBox(
                    width: 254,
                    height: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Trip ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 64,
                              fontFamily: 'Jockey One',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Tailor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 64,
                              fontFamily: 'Jockey One',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}*/
