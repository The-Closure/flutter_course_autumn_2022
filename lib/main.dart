void main() {
  Person p1 = Person(name: "flutter", age: 21);
  p1.printInfo();
  Person p2 = Person(name: "Dart", age: 21, gender: "FEMALE");
  p2.printInfo();
}

class Person {
  String name;
  int age;
  String? gender;

  void printInfo() {
    print("name : $name \nage : $age \ngender : $gender");
  }

  Person({required this.name, required this.age, this.gender});
}
