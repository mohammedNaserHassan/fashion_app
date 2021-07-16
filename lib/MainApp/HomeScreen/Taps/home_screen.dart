import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashion_app/MainApp/HomeScreen/Taps/card.dart';
import 'package:fashion_app/MainApp/HomeScreen/Taps/home_tap.dart';
import 'package:fashion_app/MainApp/HomeScreen/Taps/profile.dart';
import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'favourite.dart';
class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
    List<Widget> _widgetOptions = <Widget>[
     home_tab(),
    favoueite(),
      card(''),
      profile()
  ];
  int selectedIconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 0.0,
        backgroundColor: backgroundColor,
  actions: [
    Padding(
      padding: EdgeInsets.only(right: appPadding),
      child: Icon(
        Icons.notifications_rounded,
        color: darkGrey,
        size: 30,
      ),
    )
  ],
),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _widgetOptions.elementAt(selectedIconIndex),


          ],
        ),
      ),

        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          index: selectedIconIndex,
          buttonBackgroundColor: white,
          height: 60,
          color: white,
          onTap: (index){
            setState(() {
              selectedIconIndex = index;
            });
          },
          animationDuration: Duration(
              milliseconds: 400
          ),
          items: [
            Icon(
              Icons.home_outlined,
              size: 30,
              color: selectedIconIndex == 0 ? pink : darkGrey,
            ),
            Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: selectedIconIndex == 1 ? pink : darkGrey,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: selectedIconIndex == 2 ? pink : darkGrey,
            ),
            Icon(
              Icons.person_outline,
              size: 30,
              color: selectedIconIndex == 3 ? pink : darkGrey,
            ),
          ],
        ),

    );
  }
}
