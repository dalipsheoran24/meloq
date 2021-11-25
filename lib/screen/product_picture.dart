
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:meloq/models/constant.dart';
import 'package:meloq/models/video_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../routes.dart';

class ProductPicture extends StatefulWidget {
  const ProductPicture({Key? key}) : super(key: key);

  @override
  _Product_PictureState createState() => _Product_PictureState();
}

class _Product_PictureState extends State<ProductPicture> {
  //List<ProductImage> productList = [];
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List<Widget> widgetList = [];
  bool isFetchingData = false;
  bool isLoading = false;
  List<ProductVideoInfo> productiveVideoList = [];
  Future getData() async {
    productiveVideoList.clear();
    setState(() {
      isFetchingData = true;
    });
    Uri myUri = Uri.parse(
        'https://dazzingshadow.com/meloq/Api/get_product');
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;

      list.forEach((element) {
        productiveVideoList.add(ProductVideoInfo.fromJson(element));
      });

      setState(() {
        isFetchingData = false;
      });
    }
  }

  @override
  void initState() {
    initMethod();
    super.initState();
  }

  Future initMethod() async {
    await getData();
       // productList.add(ProductImage(url: 'assets/images/soloEasy.png'));
    // productiveVideoList.add(ProductVideoInfo(image: isLoading ? CircularProgressIndicator().toString():"https://dazzingshadow.com/meloq/img/product_images/"+productiveVideoList[0].image!));
    //
    // productiveVideoList.forEach((productImage) {
    //   widgetList.add(getImageWidget(productImage));
    // });
    setState(() {

    });
  }

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
      body: Stack(
        children: [
          Constant.backContainer,
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/warranty.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: PageView.builder(
                      controller: controller,
                       itemCount:productiveVideoList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://dazzingshadow.com/meloq/img/product_images/"+productiveVideoList[0].image!
                              ),fit: BoxFit.cover
                            )
                          ),
                        );
                      },
                    ),
                    // child: CarouselSlider(
                    //   options: CarouselOptions(
                    //       aspectRatio: 3.0,
                    //       scrollDirection: Axis.horizontal,
                    //       autoPlay: true,
                    //       pageSnapping: true,
                    //       enlargeCenterPage: true,
                    //       viewportFraction: 1),
                    //   items: widgetList,
                    // ),
                  ),
                  // child: Container(
                  //   height: 200,
                  //   width: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage('assets/images/soloEasy.png'),
                  //           fit: BoxFit.cover
                  //       )
                  //   ),
                  // ),
                ),
                SizedBox(
                  height: 8,
                ),


                SmoothPageIndicator(
                    controller: controller,
                    count: productiveVideoList.length,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 10,
                      dotHeight: 12,
                      dotWidth: 12,
                    )),
                Text(
                  'Thanks you Chossing Meloq And Pictures\nOn The Product',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget getImageWidget(ProductVideoInfo productImage) {
//   return InkWell(
//     child: Container(
//       height: 900,
//       width: 200,
//       child: Image.network(
//         productImage.image!,
//         fit: BoxFit.fill,
//
//       ),
//     ),
//       // onTap: () {
//       //   Navigator.pushNamed(context, Routes.OPENVIDEO,
//       //       arguments: productImage);}
//   );
// }


