import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:meloq/models/constant.dart';
import 'package:meloq/models/video_model.dart';
import 'package:meloq/routes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ProductVideoInfo> productiveVideoList = [];
  bool isFetchingData = false;

  Future getData() async {
    productiveVideoList.clear();
    setState(() {
      isFetchingData = true;
    });
    Uri myUri = Uri.parse('https://dazzingshadow.com/meloq/Api/get_product');
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
    getData();

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Constant.backContainer,
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment.center,
                  child: GridView.builder(
                      itemCount: productiveVideoList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.65,
                          crossAxisCount: 2,

                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width / 2.2,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    height: 200,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://dazzingshadow.com/meloq/img/product_images/" +
                                                  productiveVideoList[index]
                                                      .image!),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(productiveVideoList[index].title.toString()),
                              )
                            ],
                          ),
                            onTap: () {
                              Navigator.pushNamed(context, Routes.VIDEO,
                                  arguments: productiveVideoList);}


                        );
                      }))),
        ],
      ),
    );
  }
}
