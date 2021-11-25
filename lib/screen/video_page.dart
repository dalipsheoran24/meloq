
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:meloq/models/constant.dart';
import 'package:meloq/models/video_model.dart';
import 'package:video_player/video_player.dart';
import 'package:meloq/models/video_model.dart';

import '../routes.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  var datas ;
  bool isFetchingData = false;
  List<ProductVideoInfo> productiveVideoList = [];

  // Future getData() async {
  //   productiveVideoList.clear();
  //   setState(() {
  //     isFetchingData = true;
  //   });
  //   Uri myUri = Uri.parse(
  //       'https://dazzingshadow.com/meloq/Api/get_product');
  //   Response response = await get(myUri);
  //   if (response.statusCode == 200) {
  //     final list = jsonDecode(response.body) as List;
  //
  //     list.forEach((element) {
  //       productiveVideoList.add(ProductVideoInfo.fromJson(element));
  //     });
  //
  //     setState(() {
  //       isFetchingData = false;
  //
  //     });
  //   }
  // }
  //
  // @override
  // void initState() {
  //   getData();
  //
  //   super.initState();
  // }



  // late List<VideoModelInfo> videoModelList;

  // @override
  // void initState() {
  //   loadVideoList();
  //   super.initState();
  // }

  // void loadVideoList() {
  //   videoModelList = [
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //     VideoModelInfo(
  //         img: "assets/images/Capture.png",
  //         subject: 'Lorem ipsum is the short-hand term for the most popular',
  //         openPageName: ''),
  //   ];
  // }
  @override
  Widget build(BuildContext context) {
      productiveVideoList = (ModalRoute
         .of(context)!.settings.arguments as List<ProductVideoInfo>?)!;



    return Scaffold(
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.menu,color: Colors.black45,),onTap: (){Drawer();},),
        backgroundColor: Colors.white,
        title: Text(
          'Video',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 24,
              ),
              InkWell(
                child: Icon(
                  Icons.notifications,
                  color: Colors.black45,
                ),
                onTap: (){},
              ),
              SizedBox(
                width: 24,
              ),
              InkWell(
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black45,
                ),
                onTap: (){},
              ),
              SizedBox(
                width: 24,
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [Constant.backContainer,
          Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 16,),
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: productiveVideoList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: InkWell(
                                    child: Row(
                                      children: [
                                        Stack(children: [
                                          Container(
                                            height: 90,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.7,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      offset: Offset(0, 2),
                                                      blurRadius: 6),
                                                ],
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://dazzingshadow.com/meloq/img/product_images/" +
                                                            productiveVideoList[
                                                                    index]
                                                                .image!),
                                                    fit: BoxFit.fill),
                                                shape: BoxShape.rectangle),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 55),
                                            child: Icon(
                                              Icons.slow_motion_video_sharp,
                                              size: 30,
                                            ),
                                          )
                                        ]),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              color: Constant.videoCardColor),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.72,
                                          height: 90,
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                productiveVideoList[index]
                                                    .title!,
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.OPENVIDEO,
                                          arguments:
                                              productiveVideoList[index]);
                                    }),
                              ));

                      }),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Card(
                        color: Constant.buttonColor,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Basic Operation',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                    GestureDetector(
                      child: Card(
                        color: Constant.buttonColor,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Instruction Video',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),],
      ),
    );
  }
}