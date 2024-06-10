import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EnhancedBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vectors/subtract_9_x2.svg'), // Example SVG for Home
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vectors/notification_4_x2.svg'

          ), // Example SVG for Notifications
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vectors/vector_155_x2.svg'), // Example SVG for Add Trip
          label: 'Add Trip',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vectors/vector_155_x2.svg'), // Example SVG for Favorites
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/vectors/rectangle_41608_x2.svg'), // Example SVG for Profile
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: GoogleFonts.openSans(
        fontWeight: FontWeight.w600,
        fontSize: 10,
      ),
      unselectedLabelStyle: GoogleFonts.openSans(
        fontWeight: FontWeight.w400,
        fontSize: 10,
      ),
    );
  }
}
