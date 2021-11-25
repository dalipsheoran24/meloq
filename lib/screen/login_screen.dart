import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';

import '../routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

   bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Constant.backContainer,
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 30),
              child: Align(alignment: Alignment.topLeft,
                child: Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage('assets/images/appLogo.png'), ),
                    )
                ),
              ),
            ),
            Align(alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height/1.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24,),
                            Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 24,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: const BorderSide(
                                  //       color: Colors.black12, width: 2.0),
                                  //   borderRadius: BorderRadius.circular(8.0),
                                  // ),
                                  // focusedBorder: OutlineInputBorder(
                                  //   borderSide: const BorderSide(
                                  //       color: Colors.black12, width: 2.0),
                                  //   borderRadius: BorderRadius.circular(8.0),
                                  // ),
                                  hintText: 'Enter Email',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                obscureText: isPassword,
                                controller: passController,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Enter Password',
                                  suffixIcon: InkWell(
                                    child: Icon(
                                      Icons.remove_red_eye,

                                    ),
                                    onTap: () {
                                      setState(() {
                                        // ignore: unnecessary_statements
                                        isPassword = !isPassword;
                                      });
                                    },
                                  ),
                                  border: InputBorder.none,
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: const BorderSide(
                                  //       color: Colors.black12, width: 2.0),
                                  //   borderRadius: BorderRadius.circular(8.0),
                                  // ),
                                  // focusedBorder: OutlineInputBorder(
                                  //   borderSide: const BorderSide(
                                  //       color: Colors.black12, width: 2.0),
                                  //   borderRadius: BorderRadius.circular(8.0),
                                  // ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // if (_formKey.currentState.validate()) {
                                //   login(context);
                                // }
                                Navigator.pushNamed(context, Routes.PROFILE);
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                primary: Constant.buttonColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Align(alignment: Alignment.center,
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black45
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.pushNamed(context, Routes.FORGET);
                          },
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Align(alignment: Alignment.center,
                              child: Text(
                                'Sign up',style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.pushNamed(context, Routes.SIGNUP);
                          },
                        ),


                        Align(alignment: Alignment.center,
                          child: Container(
                            height: 5,
                            width: MediaQuery.of(context).size.width/4,
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                              color: Colors.black38,
                            ),

                          ),
                        ),

                        SizedBox(
                          height: 8,
                        ),

                      SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
