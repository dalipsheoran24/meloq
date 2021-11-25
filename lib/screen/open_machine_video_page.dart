// import 'package:flutter/material.dart';
// import 'package:meloq/models/constant.dart';
// import 'package:meloq/models/video_machine_info.dart';
//
// import '../routes.dart';
//
// class OpenMachineVideo extends StatefulWidget {
//   const OpenMachineVideo({Key? key}) : super(key: key);
//
//   @override
//   _OpenMachineVideoState createState() => _OpenMachineVideoState();
// }
//
// class _OpenMachineVideoState extends State<OpenMachineVideo> {
//   @override
//   Widget build(BuildContext context) {
//     VideoMachineInfo? data = ModalRoute
//         .of(context)!.settings.arguments as VideoMachineInfo?;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Constant.backGroundColor,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height/2.2,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           data!.img,
//                         ),fit: BoxFit.fill
//                       )
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Align(alignment: Alignment.center,child: Text(data.subject)),
//                 ),
//                 Row(children: [
//                   Container(height: 40,
//                     decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
//                     child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 30,),
//                   ),SizedBox(width: 8,),
//                   Text('Lorem ipsum is the short-hand term for \nthe most popular')
//                 ],),
//                 SizedBox(height: 10,),
//                 InkWell(
//                   child: Row(children: [
//                     Container(height: 40,
//                       decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
//                       child: Icon(Icons.arrow_downward_rounded,color: Colors.white,size: 30,),
//                     ),SizedBox(width: 8,),
//                     Text('Lorem ipsum is the short-hand term for \nthe most popular')
//                   ],),
//                   onTap: (){
//                     Navigator.pushNamed(context, Routes.DOWNLOAD);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Simpleclass extends StatefulWidget {
  @override
  _SimpleclassState createState() => _SimpleclassState();
}

class _SimpleclassState extends State<Simpleclass> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Text(
                  'Scrolling Dots',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  )),

              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
