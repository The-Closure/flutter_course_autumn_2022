import 'dart:convert';

class User {
  String? name;
  String? email;
  int? id;
  Map<String, dynamic> toJson(User user) {
    Map<String, dynamic> data = {
      'email': user.email,
      'name': user.name,
      'id': user.id
    };

    return data;
  }

  User.fromJson(Map<String, dynamic> data) {
    email = data['email'];
    name = data['name'];
    id = data['id'];
  }

  User({required this.email, required this.id, required this.name});
}

void main() {
  User user = User(email: 'gmail.com', name: 'gmail', id: 324243);
  Map<String, dynamic> userMap = user.toJson(user);
  String userStr = json.encode(userMap);
  print(userStr);
  Map<String, dynamic> incomeMap = json.decode(userStr);
  User incomeUser = User.fromJson(incomeMap);
  print(
      'name : ${incomeUser.name}, email : ${incomeUser.email}, id : ${incomeUser.id}');
}
