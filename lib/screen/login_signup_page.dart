import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';

import '../routes.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({Key? key}) : super(key: key);

  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Stack(
    children: [
      Constant.backContainer,
       Padding(
         padding: const EdgeInsets.only(top: 50),
         child: Align(alignment: Alignment.topCenter,
           child: Container(
               height: 80,
               width: 200,
               decoration: BoxDecoration(
             image: DecorationImage(
                 image:AssetImage('assets/images/appLogo.png'), ),
             )
           ),
         ),
       ),
      Align(alignment: Alignment.center,
          child: Text('All services on \nDIGITAL \nGONIOMETER',textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
          )),
      Align(alignment: Alignment.bottomCenter,
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width/3,
                child: Card(color: Constant.buttonColor,
                  child: Align(alignment: Alignment.center,
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 16),
                  ),
                ),),
              ),
              onTap: (){
                Navigator.pushNamed(context,Routes.LOGIN);
              },
            ),
            InkWell(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width/3.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue,width: 2)
                ),
                child: Align(alignment: Alignment.center,
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16,color: Colors.blue),
                  ),
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context,Routes.SIGNUP);
              },
            ),
          ],
        ),
      )

    ],
  ),
    );
  }
}
