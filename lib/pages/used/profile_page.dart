import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../localization/app_localization.dart'; // Import localization

class ProfilePage extends StatefulWidget {
  final String ID;

  ProfilePage({required this.ID});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic>? userData;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final _confirmController = TextEditingController();

  bool _isLoading = false;
  bool uploading = false;
  bool loadUploadEnabled = false;
  final ImagePicker _picker = ImagePicker();
  File? _image;
  String? Photo;

  @override
  void initState() {
    _birthdayController.addListener(_formatBirthDate);
    getUserProfile();
    super.initState();
  }

  @override
  void dispose() {
    _birthdayController.removeListener(_formatBirthDate);
    _birthdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 16),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: ListTile(
                    title: Text(
                      'edit_profile'.tr(context),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                profileHeader(),
                SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 17, 20),
                  child: Form(
                    key: _formKey,
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
                divider(),
                SizedBox(height: 20),
                _isLoading
                    ? Center(child: CircularProgressIndicator())
                    : InkWell(
                  onTap: () {
                    _updateProfile();
                  },
                  child: Container(
                    height: 50,
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
                        'update_profile'.tr(context),
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
                SizedBox(
                  height: 20,
                ),
                SizedBox(height: 29),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profileHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: Photo == null || Photo == ""
                  ? DecorationImage(
                image: AssetImage('assets/profile.png'),
                fit: BoxFit.cover,
              )
                  : DecorationImage(
                image: NetworkImage(Photo ?? ''),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () async {
                await _pickImage();
                await _uploadAndUpdateProfile();
              },
              child: Container(
                height: 27,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FC),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Icon(Icons.camera_alt, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: Divider(color: Color(0x66000000)),
    );
  }

  Future<Map<String, dynamic>?> fetchUserData() async {
    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(widget.ID).get();
      if (userDoc.exists) {
        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
        return userData;
      } else {
        print("No user found with uid: ${widget.ID}");
        return null;
      }
    } catch (e) {
      print("Error fetching user data: $e");
      return null;
    }
  }

  void getUserProfile() async {
    userData = await fetchUserData();
    if (userData != null) {
      _nameController.text = userData?['name'] ?? '';
      _emailController.text = userData?['email'] ?? '';
      _mobileController.text = userData?['phone'] ?? '';
      _birthdayController.text = userData?['birthday'];
      setState(() {
        Photo = userData?['profilePicture'] ?? '';
      });
      print("User Data: $userData");
    } else {
      print("Failed to fetch user data or user does not exist.");
    }
  }

  Future<void> _updateProfile() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).update({
          'name': _nameController.text,
          'email': _emailController.text,
          'phone': _mobileController.text,
          'birthday': _birthdayController.text,
        }).then((value) {
          setState(() {
            _isLoading = false;
          });
        }).catchError((error) {
          setState(() {
            _isLoading = false;
          });
          print("Error updating: $error");
        });
      }
    }
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

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadAndUpdateProfile() async {
    if (_image == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('no_image_selected'.tr(context))));
      return;
    }
    String filePath = 'ProfilePictures/${widget.ID}';
    FirebaseStorage storage = FirebaseStorage.instance;
    try {
      TaskSnapshot snapshot = await storage.ref(filePath).putFile(_image!);
      String downloadUrl = await snapshot.ref.getDownloadURL();
      await FirebaseFirestore.instance.collection('users').doc(widget.ID).set({
        'profilePicture': downloadUrl,
      }, SetOptions(merge: true));
      setState(() {
        Photo = downloadUrl;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('profile_picture_updated'.tr(context))));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error_uploading_image'.tr(context) + ': $e')));
    }
  }

  void _showSnackBar(String message, Color color, {Icon? icon}) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          if (icon != null) icon,
          SizedBox(width: 8),
          Text(message),
        ],
      ),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
