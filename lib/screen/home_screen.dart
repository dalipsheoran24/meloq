import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';
import 'package:meloq/screen/download_page.dart';
import 'package:meloq/screen/product_page.dart';
import 'package:meloq/screen/product_picture.dart';
import 'package:meloq/screen/splace_page.dart';
import 'package:meloq/screen/video_page.dart';

import 'login_signup_page.dart';
import 'open_machine_video_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  List _screens=[ProductPicture(),ProductPage(),Text(''),Text(''),LoginSignupPage(),];


  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],

        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              height: 40,width: 60,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              ),
              child: ImageIcon(
                AssetImage('assets/images/backArrow.png'),
              ),
            ),

          ),

          BottomNavigationBarItem(
            label: "",
            icon: Container(
              height: 40,width: 60,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              ),
              child: ImageIcon(
                AssetImage('assets/images/videoArrow.png'),
              ),
            ),
          ),

          BottomNavigationBarItem(
            label: "",
            icon: Container(
              height: 40,width: 60,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              ),
              child: ImageIcon(
                AssetImage('assets/images/messageArrow.png'),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              height: 40,width: 60,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              ),
              child: ImageIcon(
                AssetImage('assets/images/reelArrow.png'),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              height: 40,width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ImageIcon(
                AssetImage('assets/images/deviceArrow.png'),
              ),
            ),

          ),
        ],
      ),
    );
  }}




//
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//
//       )
//
//     );
//   }
// }
