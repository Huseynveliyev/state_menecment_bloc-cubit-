class CatsModel {
  String? description;
  String? imageUrl;
  int? statusCode;

  CatsModel(
      {required this.description,
      required this.imageUrl,
      required this.statusCode});

  CatsModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    imageUrl = json['imageUrl'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['imageUrl'] = this.imageUrl;
    data['statusCode'] = this.statusCode;
    return data;
  }
}
