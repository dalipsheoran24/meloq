import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';

import '../routes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Constant.backContainer,

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(alignment: Alignment.topCenter,
                child: Text(
                  'My Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(right: 10,top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/addDevice.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, Routes.ADD);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,right: 5),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Add Device',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profileImage.png'),
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(alignment: Alignment.topLeft,
                            child: Text(
                              'Basic Details',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Align(alignment: Alignment.centerLeft,
                            child: Text('Full Name',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black38
                              ),
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // focusedBorder: OutlineInputBorder(
                                //
                                //   borderRadius: BorderRadius.circular(8.0),
                                // ),
                              ),
                              // ignore: missing_return, missing_return;
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Input name';
                                }
                                return null;
                              },
                              controller: nameController,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                         Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Align(alignment: Alignment.centerLeft,
                            child: Text('Email id',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black38
                              ),
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // focusedBorder: OutlineInputBorder(
                                //
                                //   borderRadius: BorderRadius.circular(8.0),
                                // ),
                              ),
                              // ignore: missing_return, missing_return;
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Input name';
                                }
                                return null;
                              },
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                         Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Align(alignment: Alignment.centerLeft,
                            child: Text('Mobile Number',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black38
                              ),
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // focusedBorder: OutlineInputBorder(
                                //
                                //   borderRadius: BorderRadius.circular(8.0),
                                // ),
                              ),
                              // ignore: missing_return, missing_return;
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Input mobile number';
                                }
                                return null;
                              },
                              controller: mobileController,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
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
                              style: ButtonStyle( backgroundColor: MaterialStateProperty.all(
                                Constant.buttonColorSecond,
                              ),

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
              padding: const EdgeInsets.only(top: 50,left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,size: 40,color: Color.fromRGBO(0, 95, 111, 1),

                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
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
