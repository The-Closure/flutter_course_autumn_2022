import 'dart:convert';

class Brand {
  String? name;
  int? followers;
  Address? mainAddress; //{}
  List<Address>? branches; //{},{},{}
}

class Address {
  String? country;
  String? city;
  int? postalCode;
  Address({this.city, required this.country, required this.postalCode});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {
      'country': country,
      'city': city,
      'postalCode': postalCode
    };
    return data;
  }

  Address.fromJson(Map<String, dynamic> data) {
    country = data['country'];
    city = data['city'];
    postalCode = data['postalCode'];
  }
}

class User {
  String? name;
  String? email;
  int? id;
  Address? address;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {
      'email': email,
      'name': name,
      'id': id,
      'address': address?.toJson()
    };

    return data;
  }

  User.fromJson(Map<String, dynamic> data) {
    email = data['email'];
    name = data['name'];
    id = data['id'];
    address = Address.fromJson(data['address']);
  }

  User(
      {required this.email,
      required this.id,
      required this.name,
      required this.address});
}

void main() {
  User user = User(
      email: 'gmail.com',
      name: 'gmail',
      id: 324243,
      address: Address(country: 'country', postalCode: 123123));
  Map<String, dynamic> userMap = user.toJson();
  String userStr = json.encode(userMap);
  print(userStr);
  Map<String, dynamic> incomeMap = json.decode(userStr);
  User incomeUser = User.fromJson(incomeMap);
  print(
      'name : ${incomeUser.name}, email : ${incomeUser.email}, id : ${incomeUser.id}, address : ${incomeUser.address?.city}');

  List<User> users = [user, user, user, user];
  List<Map<String, dynamic>> usersMap = users.map((e) => e.toJson()).toList();
  String usersStr = json.encode(usersMap);
  print(usersStr);

  List<dynamic> incomeList = json.decode(usersStr);
  List<User> incomeUsers = incomeList.map((e) => User.fromJson(e)).toList();
  incomeUsers.forEach((element) => print(
      'name : ${element.name}, email : ${element.email}, id : ${element.id}'));
}
