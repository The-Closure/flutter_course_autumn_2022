
import 'package:dio/dio.dart';

main() async{
// Car omarCar  = Car.Mercedice('benze');
// print(omarCar.abS);
dynamic data =await  getData();

print(data['name']);

}

getData()async{
  Dio dio = Dio();

   Response result =await dio.get('https://jsonplaceholder.typicode.com/comments/-1');
  if(result.statusCode == 200){

   return result.data;
  }
  else {
    return {'name':'Error'};
  }
}



class Car {
  String name;
  String model;
  bool abS;
  // String type;
  Car({
    required this.name,
    required this.model,
    required this.abS,
  });
  
  factory Car.Mercedice(String type){
    if(type=='benze'){
    return Car(name: type, model: '2010', abS: true);

    }
    else {
      return Car(name: type, model: '2006', abS: false);
    }
  }

}
