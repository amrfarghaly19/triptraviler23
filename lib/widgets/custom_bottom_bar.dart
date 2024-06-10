/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: SvgPicture.asset('assets/vectors/subtract_9_x2.svg'), // Example SVG for Home
      activeIcon: ImageConstant.imgNewsIcon,
      type: BottomBarEnum.Newsicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNetworkIcon,
      activeIcon: ImageConstant.imgNetworkIcon,
      type: BottomBarEnum.Networkicon,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
        gradient: */
/*LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.39),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      ),*//*

        LinearGradient(
        begin: Alignment(0.5, 0),
    end: Alignment(0.5, 2),
    colors: [
    Colors.red,
      Colors.blue
    ],
    ),
      ),

      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: appTheme.gray200,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: appTheme.gray200,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Newsicon,
  Networkicon,
  Home,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
