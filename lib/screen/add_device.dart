import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  _AddDeviceState createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  TextEditingController modelController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Constant.backContainer,
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(alignment: Alignment.topCenter,
                child: Text(
                  'Add Device',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24
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
            Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/1.1,
                child: Card(color: Constant.backGroundColor,
                  child:
                    Column(
                      children: [
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Device Name',
                                  border: InputBorder.none,
                                  suffixIcon: InkWell(
                                    child: Icon(
                                      Icons.arrow_drop_down,size: 40,
                                      color: Colors.blue,
                                    ),
                                    onTap: () {
                                      setState(() {

                                      });
                                    },
                                  ),
                                ),
                                // ignore: missing_return, missing_return;
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Please Input name';
                                  }
                                  return null;
                                },
                                controller: dateController,
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Device Model no',

                                ),
                                // ignore: missing_return, missing_return;
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Please Input name';
                                  }
                                  return null;
                                },
                                controller: modelController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Purchased date',
                                  border: InputBorder.none,

                                ),
                                // ignore: missing_return, missing_return;
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Please Input name';
                                  }
                                  return null;
                                },
                                controller: dateController,
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16,right: 16),
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
