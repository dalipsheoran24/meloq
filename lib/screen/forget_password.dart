import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';

import '../routes.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController forgetController = TextEditingController();

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
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 95, 111, 1),
                          ),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,color: Colors.white,
                        ),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 95, 111, 1),
                      ),
                    )
                  ],
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
                              'Forgot Password',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 24,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'E-mail',
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
                                controller: forgetController,
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
                                Navigator.pushNamed(context, Routes.OTP);
                              },

                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
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

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black38,
                  ),

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
