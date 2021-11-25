
import 'package:flutter/material.dart';

class Constant{
  static final  Color buttonColor =Color.fromRGBO(183, 240, 250, .76);
  static final  Color backGroundColor = Color.fromRGBO(201, 237, 242, 1);
  static final  Color buttonColorSecond = Color.fromRGBO(191, 241, 250, 1);
  static final  Color videoCardColor = Color.fromRGBO(209, 248, 255, 1);
  static final Container backContainer = Container(
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/rectangle.png'),
              fit: BoxFit.fill,
            )
          ),
        ),
        Align(alignment: Alignment.centerLeft,
          child: Container(
            height: 400,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(180),
                bottomRight: Radius.circular(180),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:100),
          child: Align(alignment: Alignment.center,
            child: Container(
              height: 450,
              width: 450,
              decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.blue[50],
              ),
            ),
          ),
        ),

      ],
    ),
  );

}