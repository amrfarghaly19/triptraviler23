import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled3445/pages/home_container/home_bage.dart';
import 'package:untitled3445/pages/home_container/home_container.dart';
import 'package:untitled3445/pages/used/login.dart';
import '../../localization/app_localization.dart'; // Import localization

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  final _mobileController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  String? Error;

  @override
  void initState() {
    _birthdayController.addListener(_formatBirthDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFF7F6F0),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 17.2, 24, 8),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 18.4, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(111),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/pink_and_black_modern_initials_logo_design_1.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 71.6,
                          height: 65,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 17, 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 1, 12),
                            child: Text(
                              'lets_get_started'.tr(context),
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
                            'create_new_account'.tr(context),
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
                                'name'.tr(context),
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
                                controller: _nameController,
                                decoration: InputDecoration(
                                  hintText: 'enter_full_name'.tr(context),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'enter_name_error'.tr(context);
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
                                  enabledBorder: UnderlineInputBorder(
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
                                  enabledBorder: UnderlineInputBorder(
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
                      margin: EdgeInsets.fromLTRB(0, 0, 17, 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'retype_password'.tr(context),
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
                                controller: _confirmController,
                                decoration: InputDecoration(
                                  hintText: 'enter_password_again'.tr(context),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty || _passwordController.text != _confirmController.text) {
                                    return 'enter_confirm_password_error'.tr(context);
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
                                'mobile_number'.tr(context),
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
                                controller: _mobileController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'enter_mobile_number'.tr(context),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'enter_mobile_number_error'.tr(context);
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
                                'birthday'.tr(context),
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
                                controller: _birthdayController,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(8)
                                ],
                                decoration: InputDecoration(
                                  hintText: 'enter_birthday'.tr(context),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'enter_birthday_error'.tr(context);
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
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
                                'accept_terms'.tr(context),
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  height: 1.2,
                                  color: Color(0xFFFF361D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      Error ?? "",
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        register();
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                            begin: Alignment(-1, 0),
                            end: Alignment(1, 0),
                            colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
                            stops: <double>[0, 0.134, 1],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'sign_up'.tr(context),
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
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 18, 32),
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
                                text: 'already_have_account'.tr(context),
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
                                text: 'sign_in'.tr(context),
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
      ),
    );
  }

  void register() {
    if (_formKey.currentState!.validate()) {
      firebaseFunction();
    }
  }

  Future<void> firebaseFunction() async {
    setState(() {
      Error = "";
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      User? user = userCredential.user;
      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'name': _nameController.text,
          'email': _emailController.text,
          'phone': _mobileController.text,
          'birthday': _birthdayController.text,
          'uid': user.uid,
        });
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeContainerScreen(ID: user.uid, Name: _nameController.text)));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        setState(() {
          Error = 'weak_password_error'.tr(context);
        });
      } else if (e.code == 'email-already-in-use') {
        setState(() {
          Error = 'email_in_use_error'.tr(context);
        });
      }
    } catch (e) {
      setState(() {
        Error = e.toString();
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    _birthdayController.removeListener(_formatBirthDate);
    _birthdayController.dispose();
    super.dispose();
  }

  void _formatBirthDate() {
    String text = _birthdayController.text;
    text = text.replaceAll('/', '');

    if (text.length > 8) {
      text = text.substring(0, 8);
    }

    if (text.length > 4) {
      text = text.substring(0, 2) + '/' + text.substring(2, 4) + '/' + text.substring(4, text.length);
    } else if (text.length > 2) {
      text = text.substring(0, 2) + '/' + text.substring(2);
    }

    _birthdayController.value = TextEditingValue(
      text: text,
      selection: TextSelection.fromPosition(
        TextPosition(offset: text.length),
      ),
    );
  }
}
