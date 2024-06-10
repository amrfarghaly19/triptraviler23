/*
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/rendering.dart';
import 'package:location/location.dart';
import 'package:untitled3445/pages/city_page.dart';
import 'package:untitled3445/pages/favorites_page.dart';
import 'package:untitled3445/pages/home_container/home_bage.dart';
import 'package:untitled3445/pages/profile_page.dart';
import 'package:untitled3445/pages/settings.dart';
import '../notifications_page.dart';

class HomeContainerScreen extends StatefulWidget {
  final String ID, Name;


  HomeContainerScreen({required this.ID, required this.Name, });

  @override
  State<HomeContainerScreen> createState() => _HomeContainerScreenState();
}

class _HomeContainerScreenState extends State<HomeContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  late String ID;
  late String Name;
  String FirstName = "";

  var _currentIndex = 0;
  DateTime? currentBackPressTime;

  Future<LocationData?> getUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();
    return _locationData;
  }

  Future<void> _saveUserLocation() async {
    LocationData? locationData = await getUserLocation();
    if (locationData != null) {
      await FirebaseFirestore.instance.collection('users').doc(ID).set({
        'latitude': locationData.latitude,
        'longitude': locationData.longitude,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print("Location Done , ${locationData.latitude} ${locationData.longitude}");
    }
  }

  @override
  void initState() {
    super.initState();
    _saveUserLocation();
    getUserName();
    print("ID in Home Container is ${widget.ID}");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF7F6F0),
        body: Container(
          color: Color(0xFFF7F6F0),
          child: _getBody(),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Color(0xFFF7F6F0)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                final color = isActive ? Color(0xFF3F217B) : Color(0xFF171717);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconList[index],
                      size: 24,
                      color: color,
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AutoSizeText(
                        widget.languageStrings[namesList[index]] ?? namesList[index],
                        maxLines: 1,
                        style: TextStyle(color: color),
                        group: autoSizeGroup,
                      ),
                    )
                  ],
                );
              },
              backgroundColor: Colors.white,
              activeIndex: _currentIndex,
              splashColor: Colors.red,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.none,
              leftCornerRadius: 0,
              rightCornerRadius: 0,
              onTap: (index) => setState(() => _currentIndex = index),
              shadow: BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 12,
                spreadRadius: 0.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBody() {
    switch (_currentIndex) {
      case 0:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => HomeBage(ID: widget.ID, Name: FirstName,languageStrings: widget.languageStrings),
            );
          },
        );
      case 1:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => NotificationsPage(),
            );
          },
        );
      case 2:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => FavoritesPage(ID: widget.ID, languageStrings: widget.languageStrings),
            );
          },
        );
      case 3:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => SettingsPage(ID: widget.ID, languageStrings: widget.languageStrings),
            );
          },
        );
      default:
        return Container();
    }
  }

  Future<void> getUserName() async {
    setState(() {
      Name = widget.Name;
      FirstName = Name.split(' ')[0];
    });
  }

  Future<bool> onBackPressed() async {
    final backButtonSnackBar = SnackBar(
      content: Text(
        widget.languageStrings['press_back_again_to_exit'] ?? 'Press back again to exit',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
      ),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: widget.languageStrings['close'] ?? 'Close',
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    );

    if (currentBackPressTime == null ||
        DateTime.now().difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = DateTime.now();
      ScaffoldMessenger.of(context).showSnackBar(backButtonSnackBar);
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  final autoSizeGroup = AutoSizeGroup();

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.notifications_active_outlined,
    Icons.favorite_border,
    Icons.person_outline_outlined,
  ];

  final namesList = <String>["home", "notification", "favorites", "profile"];
}
*/
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/rendering.dart';
import 'package:location/location.dart';
import 'package:untitled3445/localization/app_localization.dart';
import 'package:untitled3445/pages/used/city_page.dart';
import 'package:untitled3445/pages/used/favorites_page.dart';
import 'package:untitled3445/pages/home_container/home_bage.dart';

import '../used/notifications_page.dart';
import '../used/settings.dart';
import '../used/top_points_locations.dart';

class HomeContainerScreen extends StatefulWidget {
  final String ID, Name;

  HomeContainerScreen({required this.ID, required this.Name});

  @override
  State<HomeContainerScreen> createState() => _HomeContainerScreenState();
}

class _HomeContainerScreenState extends State<HomeContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  late String ID;
  late String Name;
  String FirstName = "";

  var _currentIndex = 0;
  DateTime? currentBackPressTime;

  Future<LocationData?> getUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();
    return _locationData;
  }

  Future<void> _saveUserLocation() async {
    LocationData? locationData = await getUserLocation();
    if (locationData != null) {
      await FirebaseFirestore.instance.collection('users').doc(ID).set({
        'latitude': locationData.latitude,
        'longitude': locationData.longitude,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print("Location Done , ${locationData.latitude} ${locationData.longitude}");
    }
  }

  @override
  void initState() {
    super.initState();
    _saveUserLocation();
    getUserName();
    print("ID in Home Container is ${widget.ID}");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF7F6F0),
        body: Container(
          color: Color(0xFFF7F6F0),
          child: _getBody(),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Color(0xFFF7F6F0)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                final color = isActive ? Color(0xFF3F217B) : Color(0xFF171717);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconList[index],
                      size: 24,
                      color: color,
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AutoSizeText(
                        namesList[index].tr(context),
                        maxLines: 1,
                        style: TextStyle(color: color),
                        group: autoSizeGroup,
                      ),
                    )
                  ],
                );
              },
              backgroundColor: Colors.white,
              activeIndex: _currentIndex,
              splashColor: Colors.red,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.none,
              leftCornerRadius: 0,
              rightCornerRadius: 0,
              onTap: (index) => setState(() => _currentIndex = index),
              shadow: BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 12,
                spreadRadius: 0.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBody() {
    switch (_currentIndex) {
      case 0:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => HomeBage(ID: widget.ID, Name: FirstName),
            );
          },
        );
      case 1:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => AllLocationsPagepoints(ID: widget.ID),
            );
          },
        );
      case 2:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => FavoritesPage(ID: widget.ID),
            );
          },
        );
      case 3:
        return Navigator(
          key: GlobalKey<NavigatorState>(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => SettingsPage(ID: widget.ID),
            );
          },
        );
      default:
        return Container();
    }
  }

  Future<void> getUserName() async {
    setState(() {
      Name = widget.Name;
      FirstName = Name.split(' ')[0];
    });
  }

  Future<bool> onBackPressed() async {
    final backButtonSnackBar = SnackBar(
      content: Text(
        'press_back_again_to_exit'.tr(context),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
      ),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'close'.tr(context),
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    );

    if (currentBackPressTime == null ||
        DateTime.now().difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = DateTime.now();
      ScaffoldMessenger.of(context).showSnackBar(backButtonSnackBar);
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  final autoSizeGroup = AutoSizeGroup();

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.category_outlined,
    Icons.favorite_border,
    Icons.person_outline_outlined,
  ];

  final namesList = <String>["home", "Top Places", "favorites", "profile"];
}
