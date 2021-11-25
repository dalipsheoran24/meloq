class DownloadVideo {
  // ignore: non_constant_identifier_names
  String ?certificate_url;
  // ignore: non_constant_identifier_names
  String ?certificate_date;

  // ignore: non_constant_identifier_names
  DownloadVideo({this.certificate_url, this.certificate_date});

  DownloadVideo.fromJson(Map<String, dynamic> map) {
    certificate_url = map['certificate_url'];
    certificate_date = map['certificate_date'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['certificate_url'] = certificate_url;
    map['certificate_date'] = certificate_date;
    return map;
  }
}