import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 219,
                      height: 30,
                    )
                  ],
                ),
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 21.78215789794922,
                          height: 11.333333015441895,
                        ),
                        Container(
                          width: 1.3148877620697021,
                          height: 4,
                        ),
                        Container(
                          width: 17.82176399230957,
                          height: 7.333333492279053,
                        )
                      ],
                    ),
                    Container(
                      width: 15.121150016784668,
                      height: 10.964250564575195,
                      child: Column(
                        children: [
                          Container(
                            width: 15.121150016784668,
                            height: 4.743237495422363,
                          ),
                          Container(
                            width: 9.850497245788574,
                            height: 3.6339809894561768,
                          ),
                          Container(
                            width: 4.580484390258789,
                            height: 3.3744072914123535,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 16.831666946411133,
                      height: 10.66796875,
                      child: Column(
                        children: [
                          Container(
                            width: 2.970294237136841,
                            height: 4,
                          ),
                          Container(
                            width: 2.970294237136841,
                            height: 6,
                          ),
                          Container(
                            width: 2.970294237136841,
                            height: 8.333333015441895,
                          ),
                          Container(
                            width: 2.970294237136841,
                            height: 10.666666984558105,
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 28.42616844177246,
                          height: 11.0888671875,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff080e1e)))
              ],
            ),
            Text("Trip Tailor",
                style: TextStyle(
                  fontSize: 64,
                  // fontWeight: FontWeith.w400,
                ))
          ],
        ),
      ],
    );
  }
}
