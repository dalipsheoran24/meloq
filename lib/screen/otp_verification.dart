import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../routes.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                      'Verify',
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
                              'Phone number',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 24,),
                            Text(
                              'Enter your phone number and get OTP \ncode from RightJoy',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black45,
                              )
                            ),
                            SizedBox(height: 24,),
                            OTPTextField(
                              length: 6,
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 30,
                              style: TextStyle(
                                  fontSize: 16
                              ),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.underline,
                              onCompleted: (pin) {
                                print("Completed: " + pin);
                              },
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


                        // Align(alignment: Alignment.bottomCenter,
                        //   child: Container(
                        //     height: 4,
                        //     width: 200,
                        //     color: Colors.black38,
                        //   ),
                        // ),
                        // SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
