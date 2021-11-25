// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SplaceScreen extends StatelessWidget {
//   const SplaceScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Align(
//         alignment: Alignment.center,
//         child: Container(
//           height: 50,
//           width: 200,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                 'assets/images/appLogo.png'
//               ),
//               fit: BoxFit.fill,
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meloq/screen/product_page.dart';
import 'package:meloq/screen/video_page.dart';

import 'download_page.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align( alignment: Alignment.center,
          child: Container(
              child: Image.asset('assets/images/appLogo.png')),
        ));
  }
}
