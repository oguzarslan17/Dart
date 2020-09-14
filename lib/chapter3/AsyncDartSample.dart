import 'dart:async';
import 'dart:math';

main(List<String> args) {
  var random = new Random();
  Future<int> future = new Future.delayed(new Duration(seconds: 5), (){
    if(random.nextBool()){
      return 100;
    }
    else{
      throw 'boom!';
    }
  });
  future.then((value){
    print("Completed with value $value.");
  }, onError: (error){
    print("Completed with error $error.");
  });
}