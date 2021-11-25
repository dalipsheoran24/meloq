import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:meloq/main.dart';
import 'package:meloq/models/constant.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:meloq/models/video_model.dart';
import 'package:meloq/routes.dart';

class OpenVideoPage extends StatefulWidget {
  const OpenVideoPage({Key? key}) : super(key: key);

  @override
  _OpenVideoPageState createState() => _OpenVideoPageState();
}

class _OpenVideoPageState extends State<OpenVideoPage> {
  @override
  late VideoPlayerController controller;
  bool isFetchingData = false;
  bool downloading = false;
  List<ProductVideoInfo> videoList = [];
  late FlickManager flickManager;

  String progressString='';

  String videoPath = '';
  void initState() {
    super.initState();
    // flickManager = FlickManager(
    //   videoPlayerController:
    //   VideoPlayerController.network("https://dazzingshadow.com/meloq/img/product_images/"+data.otherVideo!),
    // );
  }
  Future downloadFile(String url) async {
    Dio dio = Dio();

    try {
      var dir = await getApplicationDocumentsDirectory();
      await dio.download(url, "${dir.path}/myFile.mp4", onReceiveProgress: (rec, total) {
        print("Rec: $rec , Total: $total");
       // pref!.setString( "videoPath",dir.path);
        //String? videoPath = pref!.getString("videoPath");
        //print("videopath ${videoPath}");
      });
    } catch (e) {
      print(e);
    }
    print("Download completed");
    await Navigator.pushNamed(context, Routes.DOWNLOAD);

  }


  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {




    ProductVideoInfo? data = ModalRoute
        .of(context)!.settings.arguments as ProductVideoInfo?;
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://dazzingshadow.com/meloq/img/product_images/"+data!.otherVideo!),
    );
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Constant.backGroundColor,
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: [ Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: FlickVideoPlayer(
                  flickManager: flickManager
              ),
            ),
          //         Container(
          //   height: MediaQuery.of(context).size.height / 2.2,
          //   width: MediaQuery
          //       .of(context)
          //       .size
          //       .width,
          //   // decoration: BoxDecoration(
          //   //     image: DecorationImage(
          //   //         image: NetworkImage(
          //   //           "https://dazzingshadow.com/meloq/img/product_images/"+data!.image!,
          //   //           //data!.image,
          //   //         ), fit: BoxFit.fill
          //   //     )
          //   // ),
          //         child: isFetchingData
          //         ? Center(child: CircularProgressIndicator(),)
          //             :VdoPlayerWidget("https://dazzingshadow.com/meloq/img/product_images/"+data!.otherVideo!)
          // ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(alignment: Alignment.center, child: Text(data.description!)),
        ),
        Row(children: [
          InkWell(
            child: Container(height: 40,width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: Icon(
                Icons.arrow_back_ios_rounded, color: Colors.white, size: 20,),
            ),
            onTap: (){Navigator.pop(context);},
          ), SizedBox(width: 8,),
          Text('Back To Playlist')
        ],),
        SizedBox(height: 10,),
        InkWell(
          child: Row(children: [
            Container(height: 40,width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: Icon(
                Icons.arrow_downward_rounded, color: Colors.white, size: 20,),
            ), SizedBox(width: 8,),
            Expanded(child: Text('Download to Offline'))
          ],),
          onTap: () async {
            downloadFile("https://dazzingshadow.com/meloq/img/product_images/"+data.otherVideo!);
          },
        ),
        ],
      ),
    ),)
    ,
    )
    ,
    );
  }


}

class VdoPlayerWidget extends StatefulWidget {
  final String url;

  const VdoPlayerWidget(this.url);

  @override
  _VdoPlayerWidgetState createState() => _VdoPlayerWidgetState();
}

class _VdoPlayerWidgetState extends State<VdoPlayerWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Container(
        width: 160,
        child: controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        )
            : Container(),
      ),
    );
  }

}


