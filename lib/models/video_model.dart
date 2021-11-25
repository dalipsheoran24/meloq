// class VideoModelInfo {
//   final String img;
//   final String subject;
//   final String openPageName;
//
//   VideoModelInfo({ required this.img,  required this.subject,  required this.openPageName});
// }
class ProductVideoInfo {
  String ?productId;
  String? title;
  String? description;
  String ?image;
  String? price;
  String? mainVideo;
  String ?otherVideo;
  String? createdAt;
  String? updatedAt;

  ProductVideoInfo(
      {this.productId,
         this.title,
         this.description,
        this.image,
        this.price,
        this.mainVideo,
        this.otherVideo,
        this.createdAt,
        this.updatedAt});

  ProductVideoInfo.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    mainVideo = json['main_video'];
    otherVideo = json['other_video'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    data['main_video'] = this.mainVideo;
    data['other_video'] = this.otherVideo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
