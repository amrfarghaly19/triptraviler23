/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // SizedBox(height: 10), // Space for top bar, if any
                header(context),
                SizedBox(height: 20),
                notificationCard(
                  iconPath: 'assets/vectors/bell_pin_fill_4_x2.svg',
                  message:
                  'Stay safe and informed! Receive important travel advisories and alerts for your current or upcoming destinations.',
                ),
                notificationCard(
                  iconPath: 'assets/vectors/bell_pin_fill_2_x2.svg',
                  message: 'Your trip is successfully booked.',
                ),
                notificationCard(
                  iconPath: 'assets/vectors/bell_pin_fill_6_x2.svg',
                  message:
                  'Get personalized recommendations! Receive notifications about restaurants, activities, and events tailored to your interests and location.',
                ),
                notificationCard(
                  iconPath: 'assets/vectors/bell_pin_fill_1_x2.svg',
                  message:
                  'Personalize your travel experience with a private guide! Get notified about professional guides who can customize your itinerary.',
                ),
                notificationCard(
                  iconPath: 'assets/vectors/bell_pin_fill_3_x2.svg',
                  message: 'Time to roll! Your driver is here.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10.4, 0, 10.4),
          width: 15.6,
          height: 15.2,
          child: SizedBox(
            width: 15.6,
            height: 15.2,
            child: SvgPicture.asset(
              'assets/vectors/vector_10_x2.svg',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
          child: Text(
            'Notifications',
            style: GoogleFonts.getFont(
              'Open Sans',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              height: 1.6,
              color: Color(0xFF121212),
            ),
          ),
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: SvgPicture.asset(
            'assets/vectors/bell_pin_fill_x2.svg',
          ),
        ),
      ],
    );
  }

  Widget notificationCard({required String iconPath, required String message}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Container(
          width: 36,
          height: 36,
          child: SvgPicture.asset(iconPath, fit: BoxFit.cover),
        ),
        title: Text(
          message,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationsPage extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> fetchNotifications() async {
    List<Map<String, dynamic>> notificationsList = [];
    try {
      CollectionReference notificationsRef = _firestore.collection('notifications');
      QuerySnapshot notificationsSnapshot = await notificationsRef.get();

      for (var notificationDoc in notificationsSnapshot.docs) {
        Map<String, dynamic> notificationData =
        notificationDoc.data() as Map<String, dynamic>;
        notificationsList.add(notificationData);
      }
    } catch (e) {
      print('Error fetching notifications: $e');
    }
    return notificationsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10), // Space for top bar, if any
                header(context),
                SizedBox(height: 20),
                FutureBuilder<List<Map<String, dynamic>>>(
                  future: fetchNotifications(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error fetching notifications'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No notifications found'));
                    } else {
                      List<Map<String, dynamic>> notificationsList = snapshot.data!;
                      return Column(
                        children: notificationsList.map((notification) {
                          return notificationCard(
                            iconPath: 'assets/vectors/bell_pin_fill_4_x2.svg', // Example icon, you can change it
                            message: notification['message'] ?? 'No message',
                          );
                        }).toList(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       /* Container(
          margin: EdgeInsets.fromLTRB(0, 10.4, 0, 10.4),
          width: 15.6,
          height: 15.2,
          child: SizedBox(
            width: 15.6,
            height: 15.2,
            child: SvgPicture.asset(
              'assets/vectors/vector_10_x2.svg',
            ),
          ),
        ),*/
        SizedBox(),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
          child: Text(
            'Notifications',
            style: GoogleFonts.getFont(
              'Open Sans',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              height: 1.6,
              color: Color(0xFF121212),
            ),
          ),
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: SvgPicture.asset(
            'assets/vectors/bell_pin_fill_x2.svg',
          ),
        ),
      ],
    );
  }

  Widget notificationCard({required String iconPath, required String message}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Container(
          width: 36,
          height: 36,
          child: SvgPicture.asset(iconPath, fit: BoxFit.cover),
        ),
        title: Text(
          message,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
