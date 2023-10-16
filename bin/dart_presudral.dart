
void main() {

  // TODO :

  //? named contructer 
  //? factory (deign patter) //  https://refactoring.guru/design-patterns
  //? dio in dart http://pub.dev & http://dart.dev
  

  // int x =60;
  // int y = 80;
// print(swapTwoNumber(50, 90));
// print(y);


// cat1.jump(10);

// print(cat1.y);

Animal cat = Cat(id: 1, name: "name", color: "color", y: 5, birthDate: 2);
// cat.id = 3;
cat.jump(20);
print(cat.id);

print(cat.runtimeType);



print(cat.name);

 // ! Bad foraml 
// Cat cat3 = Animal(name: name, color: color, y: y);

}

class Animal extends Creature {
  String name;
  String color;
  int y;


  Animal({
    required super.id,
    required this.name,
    required this.color,
    required this.y
  });


  

  jump(int height){
    this.y = this.y + height; 
  }
}

class Cat extends Animal {
int birthDate;
  Cat({required super.id,required super.name, required super.color, required super.y,required this.birthDate});



@override
jump(int height) {
    y= y-height;
  }

}


abstract class Creature {
   int id;
  Creature({
    required this.id,
  });

  showId(){

  }
  
  
}


// (int , int) swapTwoNumber(int firstNumber ,int secondNumber){
 
//   return (secondNumber ,firstNumber);

// }