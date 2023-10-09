
import 'package:dart_presudral/dart_presudral.dart';

void main() {
//   int age = 28;

//   print(age);

//   double avr = 2;

//   print(avr);

//   num counter = 30.6;

//   var price = 30;

// //  price = 30.5;

//   dynamic birthdate = '31/10/1999';

//   birthdate = 30;

//   birthdate = 30.7;

//   const String name = "Abdalaziz";

//   print(name);

//   final String nickname;

//   List studentsname = [12, 40, "anything"];

//   print(studentsname[2]);

//   Map<String, int> marks = {"Kinan": 90, "Omar": 91, "Abdalaziz": 40};

//   print(marks.keys.elementAt(2));
//   print(marks.values.elementAt(1));

  Map<String, List<Map>> nestedMapWithList = {
    "student": [
      {"Ahmad": 70, "Yaser": 90, "Noor": 100}
    ],
    "teacher": [
      {"Nader": 70, "Fadi": 90, "MHD": 100}
    ]
  };

  // print(nestedMapWithList.values.elementAt(0)[0].keys.elementAt(1));

  // print(nestedMapWithList.values.elementAt(1)[0].values.elementAt(2));


  // print(nestedMapWithList['student']![0].keys.elementAt(1));
  

  print(addTwoNumber(10,secondNumber: 30));

}


int addTwoNumber(int editionNumber,{int firstNumber = 0,required int secondNumber}){

return firstNumber+secondNumber+editionNumber;

}