
 import 'package:dio/dio.dart';

main() async{

  int result = addTwoNumber(4,()=>testFuntion());
  print(result);

Stream counter =  getPacket();

counter.listen((event) {
  if(event % 2 == 0){

  print('even');
  }
  else {
    print('odd');
  }
});
}

Function addTwoNumber = (int fisrtNumber,Function multiply){
return fisrtNumber+multiply();
};

testFuntion(){
  return 10;
}



    // ? example to Restfull API
  // await getDate();

  //? compare between 2 async funtion


// int age = getDate();
    // dynamic name =  getDate();
    
    // print( name);
    //  name =  fetchData();
    //  print( name);


Stream getPacket()async*{
  for (int i = 0; i < 20; i++) {
  await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}


 getDate()async{
Dio dio = Dio();

dynamic data =  await dio.get('http://jsonplaceholder.typicode.com/comments/1',);

print(data.data['name']);

}

// fetchData()async{
//    Future.delayed(Duration(seconds: 5));
//   return 'Tareq';
// }