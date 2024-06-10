import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled3445/pages/used/login.dart';
import 'package:untitled3445/pages/used/onboarding_1.dart';

import '../home_container/home_container.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final String Name, UID;
  late final bool _isChecked;

  late final bool boarding;

  Future<void> SplachFunction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isChecked = (prefs.getBool('rememberMe') ?? false);
      UID = (prefs.getString('UID') ?? "");
      Name = (prefs.getString('Name') ?? "");
      boarding = (prefs.getBool('boarding') ?? false);
    });

    if (boarding == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Onboarding1()));
    } else {
      if (_isChecked == true) {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeContainerScreen(
                    ID: UID,
                    Name: Name,
                  )));
        });
      } else if (_isChecked == false) {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Login()));
        });
      } else {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Login()));
        });
      }
    }
  }



  @override
  void initState() {
    SplachFunction();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(111),
              ),
              child: Image.asset(
                'assets/images/pink_and_black_modern_initials_logo_design_1.png',
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 64,
                    height: 0.3,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Trip',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 64,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'Tailor',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 64,
                        height: 1.3,
                        color: Color(0xFF4E2F8B),
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
