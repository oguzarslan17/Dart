import 'dart:math';

class TestClass{

  String testAttribute1;
  int  testAttribute2;



  void UsingGenerate(){
    List<int> stuNumber = List.generate(30, (index) => RandomStuNumber());
    stuNumber.forEach((num) => print(num));
  }

  int RandomStuNumber() => Random().nextInt(100);

  void UsingMap(){

  }
}