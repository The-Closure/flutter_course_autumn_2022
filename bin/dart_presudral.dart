void main() {
  // int age = 20;
  // double average;

  // // print(average);
  // String name;
  // bool logicOperation;

  // print(age);

  // var counter = 30;

  // // counter = "hello";

  // dynamic book = 'The Gang of four';

  // book = 20;

  // num numberOfBooks = 30.6;

  // print(book.runtimeType);

  // // const int userId;

  // // userId = 5;

  // final String nickName;

  // // ? this is a null type in this point
  // // print(nickName);
  // nickName = "Alhaj";

  // print(nickName);

  // List<int> ages = [13,20,22,55];
  // print(ages[2]);

  Map<dynamic, dynamic> majdMarks = {1: 90, 2: 80, 3: 98, "name": "ahmad"};

  print(majdMarks[1]);
  print(majdMarks['name']);

  Map<String, List<int>> nestedMap = {
    "majd mark": [90, 80, 98, 59 + 1],
    "abdalaziz mark": [60, 60, 60, 100]
  };

  print(nestedMap['abdalaziz mark']![3]);

  print(nestedMap.keys.elementAt(0));

  List<Map<String, Map<String, int>>> crazyNestedMap = [
    {
      "hamed": {"math 1": 57},
      "ahmad": {"math 2": 0},
      "abd": {"math 3": 90},
      "majd": {"math 4": 100}
    }
  ];

print(addTwoNumber(50,firstNumber: 20,secondNumber: 100));

int x = 40;
int y = 50;
 print(swapTwoNumber(x,y)) ;
// print(y); 
}

addTwoNumber(int thirdNumber,{int firstNumber=0,required int secondNumber}){
return firstNumber+secondNumber+thirdNumber;
}

(int ,int)swapTwoNumber(int firstNumber,int secondNumber){

return (secondNumber,firstNumber);

}