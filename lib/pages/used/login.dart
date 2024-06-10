
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled3445/pages/home_container/home_bage.dart';
import 'package:untitled3445/pages/used/reset_password.dart';

import 'package:untitled3445/pages/used/sign_up.dart';
import '../../localization/app_localization.dart';
import '../home_container/home_container.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String UiD = "";
  String Name = "";

  String? ERROR;

  String selectedLanguage = '';

  Future<void> _loadSelectedLanguage() async {
    final savedLanguage = await AppLocalization.getLanguage();
    setState(() {
      selectedLanguage = savedLanguage ?? 'en';
      print("selected lang is $savedLanguage");
    });
  }
  bool _isChecked = false;

  @override
  void initState() {
    _loadSelectedLanguage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF7F6F0),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF7F6F0),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(24, 17.2, 24, 8),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 17, 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: Text(
                              'welcome_back'.tr(context),
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
                            'stay_signed_in'.tr(context),
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
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 17, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'email'.tr(context),
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0xFF080E1E),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFEFEEEE)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: 'enter_email'.tr(context),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter_email_error'.tr(context);
                                } else if (!value.contains('@')) {
                                  return 'valid_email_error'.tr(context);
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 17, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'password'.tr(context),
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0xFF080E1E),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFEFEEEE)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: 'enter_password'.tr(context),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter_password_error'.tr(context);
                                } else if (value.length < 6) {
                                  return 'password_length_error'.tr(context);
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 17, 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    /*    Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFEFEEEE)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 6),
                              child: Text(
                                'keep_signed_in'.tr(context),
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  height: 1.2,
                                  color: Color(0xFF64646E),
                                ),
                              ),
                            ),
                          ],
                        ),*/
                    Row(
                    children: [
                    GestureDetector(
                    onTap: () {
                  setState(() {
                  _isChecked = !_isChecked;
                  _saveRememberMe(_isChecked);
                  });
                  },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: _isChecked ? Color(0xFFEFEEEE) : Colors.transparent,
                        border: Border.all(color: Color(0xFFEFEEEE)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _isChecked
                          ? Icon(Icons.check, size: 18, color: Color(0xFF64646E))
                          : null,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 6),
                    child: Text(
                      'keep_signed_in'.tr(context),
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.2,
                        color: Color(0xFF64646E),
                      ),
                    ),
                  ),]),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPasswordPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                            child: Text(
                              'forgot_password'.tr(context),
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                height: 1.4,
                                color: Color(0xFFFF361D),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      loginUser(context);
                    },
                    child: Container(
                      height: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                            begin: Alignment(-1, 0),
                            end: Alignment(1, 0),
                            colors: <Color>[
                              Color(0xFF577CC3),
                              Color(0xFF5471BD),
                              Color(0xFF6357AE)
                            ],
                            stops: <double>[0, 0.134, 1],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'login'.tr(context),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),

          Text(
            ERROR??"",
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.3,
              color: Colors.red,
            ),
          ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 17, 28),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            height: 1.2,
                            letterSpacing: 0.2,
                            color: Color(0xFFABB3BB),
                          ),
                          children: [
                            TextSpan(
                              text: 'dont_have_account'.tr(context),
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                height: 1.3,
                                letterSpacing: 0.2,
                                color: Color(0xFF080E1E),
                              ),
                            ),
                            TextSpan(
                              text: 'sign_up'.tr(context),
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.3,
                                letterSpacing: 0.2,
                                color: Color(0xFFFF361D),
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
          ),
        ),
      ),
    );
  }

  Future<void> loginUser(BuildContext context) async {
    if (_formKey.currentState?.validate() == false) {
      return;
    }
    setState(() {
      ERROR = "";
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      setState(() {
        UiD = userCredential.user!.uid;
      });
      await fetchUserName(UiD);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeContainerScreen(
            ID: userCredential.user!.uid,
            Name: Name,
          )));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('UID', userCredential.user!.uid);
      prefs.setString('Name', Name);

    } on FirebaseAuthException catch (e) {
      setState(() {
        ERROR = "${e.message.toString()}";
      });
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        setState(() {
          ERROR = "No user found for that email.";
        });
      } else if (e.code == 'wrong-password') {
        setState(() {
          ERROR = "Wrong password provided for that user.";
        });
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      setState(() {
        ERROR = "${e.toString()}";
      });
      print('An error occurred: ${e.toString()}');
    }
  }

  Future<String?> fetchUserName(String uid) async {
    try {
      DocumentSnapshot userDocument = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (userDocument.exists) {
        Map<String, dynamic>? userData = userDocument.data() as Map<String, dynamic>?;
        if (userData != null && userData.containsKey('name')) {
          setState(() {
            Name = userData['name'];
          });
          return userData['name'];
        } else {
          print("Name not found in document");
          return null;
        }
      } else {
        print("No document found for this UID");
        return null;
      }
    } catch (e) {
      setState(() {
        ERROR = "$e";
      });
      print("Error fetching user name: $e");
      return null;
    }
  }

  _loadRememberMe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isChecked = (prefs.getBool('rememberMe') ?? false);
    });
  }

  _saveRememberMe(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('rememberMe', value);
  }
}
