import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/login.dart';
import 'package:untitled3445/pages/used/my_cart.dart';
import 'package:untitled3445/pages/used/privacypolicy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled3445/pages/used/profile_page.dart';
import '../../localization/app_localization.dart'; // Import localization
import 'change_password.dart';
import '../../localization2/language.dart';

class SettingsPage extends StatefulWidget {
  final String ID;

  SettingsPage({required this.ID});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  late bool rememberMe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            _buildNavigationButton('settings'.tr(context)),
            _buildSectionTitle('account'.tr(context)),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => langugaeSelect(),
                ));
              },
              child: _buildSettingsItem('change_language'.tr(context), 'assets/vectors/group_2_x2.svg'),
            ),
            _buildDivider(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage(ID: widget.ID)));
              },
              child: _buildSettingsItem('edit_profile'.tr(context), 'assets/vectors/group_light_x2.svg'),
            ),
            _buildDivider(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePasswordPage(ID: widget.ID)));
              },
              child: _buildSettings2Item('change_password'.tr(context), 'assets/vectors/group_light_x2.svg'),
            ),
            _buildDivider(),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage(Token: widget.ID)));
              },
              child: _buildSettingsItem('My Cart'.tr(context), 'assets/vectors/group_light_x2.svg'),
            ),
            _buildDivider(),
            SizedBox(height: 40),
            _buildSectionTitle('general'.tr(context)),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicyPage()));
              },
              child: _buildSettingsItem('privacy_policy'.tr(context), 'assets/vectors/chield_check_x2.svg'),
            ),
            _buildDivider(),
            _buildLogout(),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(String title) {
    return Center(
      child: ListTile(
        title: Text(title, textAlign: TextAlign.center, style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(title, style: GoogleFonts.josefinSans(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildSettingsItem(String title, String iconPath) {
    return ListTile(
      leading: SvgPicture.asset(iconPath, width: 24, height: 24),
      title: Text(title, style: GoogleFonts.josefinSans(fontSize: 20, fontWeight: FontWeight.w500)),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Widget _buildSettings2Item(String title, String iconPath) {
    return ListTile(
      leading: Icon(Icons.lock_outline_sharp, size: 24),
      title: Text(title, style: GoogleFonts.josefinSans(fontSize: 20, fontWeight: FontWeight.w500)),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Widget _buildLogout() {
    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('logout'.tr(context), style: GoogleFonts.josefinSans(fontSize: 20, fontWeight: FontWeight.w500)),
      onTap: () async{
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(

              backgroundColor: Colors.white,
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Are you sure you want to logout ?"),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async{
                              {
                                Navigator.pop(context);
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                rememberMe = false;
                                prefs.setBool('rememberMe', rememberMe);
                                print("logedout");
                                //  exit(0);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login(

                                        )));



                              }
                            },
                            child: Text("Yes")),

                        SizedBox(width: 20,),

                        InkWell(
                            onTap: () async{
                              {
                                Navigator.pop(context);

                              }
                            },
                            child: Text("No")),

                      ],
                    ),

                  ],
                ),
              ),
            );
          },
        );
        // Handle logout
      },
    );
  }

  Widget _buildDivider() {
    return Center(
      child: Container(
        width: 300,
        child: Divider(
          color: Color(0x66000000),
          indent: 0.2,
          endIndent: 0.8,
        ),
      ),
    );
  }
}
