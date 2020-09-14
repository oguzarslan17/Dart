import 'dart:io';
import 'dart:async';
main(List<String> args) {
  print("Start");
  Wait1();
  print("Finish");  
}

Wait1() async{
  print("Wait1 Started");
  var result = await Wait3();
  print("Wait1 Finished: " + result.toString());
}

//Sync programming
Wait2(){
  print("Wait2 Started");
  sleep(Duration(seconds: 15));
  print("Wait2 Finished");
  return "Dynamic method returns a simple string";
}

//Async programming
Wait3(){
  print("Wait2 Started");
  Future<String> result = Future.delayed(Duration(seconds: 10), (){
    return "Dynamic method returns a simple string";
  });
  print("Wait2 Finished");

  return result;
}