
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meloq/models/constant.dart';
import 'package:meloq/models/download_models.dart';
import 'package:meloq/models/video_model.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  late List<DownloadModel> downloadModelList;

  @override
  void initState() {
    loadDownloadList();
    super.initState();
  }

  void loadDownloadList() {
    downloadModelList = [
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
      DownloadModel(
          img: "assets/images/Capture.png",
          subject: 'Lorem ipsum is the short-hand term for the most popular',
          openPageName: ''),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black45,),
        backgroundColor: Colors.white,
        title: Text(
          'Downloads',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Icon(
                Icons.notifications,
                color: Colors.black45,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.black45,
              ),
              SizedBox(
                width: 24,
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Constant.backContainer,
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1.19 ,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: downloadModelList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, videoModelList[index].openPageName);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 2),
                                              blurRadius: 6),
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                downloadModelList[index].img),
                                            fit: BoxFit.fill),
                                        shape: BoxShape.rectangle),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(),
                                    width:
                                    MediaQuery.of(context).size.height / 3.78,
                                    height: 90,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          downloadModelList[index].subject,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ));
                    }),
              ),


            ],
          ),
        ],
      ),
    );
  }
}