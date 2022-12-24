class BrandData {
  int? id;
  String? name;
  String? image;
  String? description;
  String? phoneNumber;

  BrandData(
      {this.id, this.name, this.image, this.description, this.phoneNumber});

  BrandData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    data['phoneNumber'] = phoneNumber;
    return data;
  }
}
