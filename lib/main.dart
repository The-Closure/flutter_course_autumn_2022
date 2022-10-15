import 'dart:convert';

class User {
  String? name;
  String? email;
  int? id;
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {'email': email, 'name': name, 'id': id};

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
  Map<String, dynamic> userMap = user.toJson();
  String userStr = json.encode(userMap);
  print(userStr);
  Map<String, dynamic> incomeMap = json.decode(userStr);
  User incomeUser = User.fromJson(incomeMap);
  print(
      'name : ${incomeUser.name}, email : ${incomeUser.email}, id : ${incomeUser.id}');

  List<User> users = [user, user, user, user];
  List<Map<String, dynamic>> usersMap = users.map((e) => e.toJson()).toList();
  String usersStr = json.encode(usersMap);
  print(usersStr);

  List<dynamic> incomeList = json.decode(usersStr);
  List<User> incomeUsers = incomeList.map((e) => User.fromJson(e)).toList();
  incomeUsers.forEach((element) => print(
      'name : ${element.name}, email : ${element.email}, id : ${element.id}'));
}
