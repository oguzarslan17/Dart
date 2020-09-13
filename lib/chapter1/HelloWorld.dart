//Dart Basics
main(List<String> args) {
  print("Hello World");
  SayHello();
  print(Addition(6, 7));
  String message = SendMessage("Syntax looks like C#");
  print(message);
  print('Escape string = \'');
  Example ex = new Example(5, "Oğuz", 1.5);
  print(ex.attribute1.toString() + " " + ex.attribute2 + " " + ex.attribute3.toString());
  num numnum = 82;
  print(numnum);
  numnum = 82.5;
  print(numnum);

  print(UsingIfElse(1, 2));
  
  print(UsingIfElse2(1,2));
  print(UsingIfElse2(2,2));
  print(UsingTernaryIf(3,6));
  UsingList();
  UsingForLoop();
  UsingWhile();
  UsingDoWhile();
  print(Sum(30,50));

  //Dynamic List Sample
  print("Dynamic List Sample");
  List<num> list = new List();
  list.add(5);
  list.add(6);
  list.add(6);
  list.add(80);
  list.add(90);
  list.add(9110);
  list.add(910);
  list.add(7.3);
  list.add(-0.7);
  list.removeAt(2); //by index
  list.removeWhere((item) => item == 5); //by query
  for (var item in list) {
    print(item);
  }
  num a = list.singleWhere((item) =>item == 6);
  print("a: $a");
  var newList = list.where((item)=>item >50).toList();
  print("---------------------");
  for (var item in newList) {
    print(item);
  }
}

//Prints hello
void SayHello(){
  print("Hello");
}

//Simple addition method. returns the sum of two numbers
int Addition(int a, int b){
  return a+b;
}

//Returns a message
String SendMessage(String msg){
  return "Message: " + msg;
}

//sample class definition
class Example{
  //Constructor
  Example(A1,A2,A3){
    attribute1 = A1;
    attribute2 = A2;
    attribute3 = A3;
  }
  int attribute1;
  String attribute2;
  double attribute3;
} 

int UsingIfElse(int n1, int n2){
  if(n1 > n2){
    return n1;
  }
  else if(n2>n1){
    return n2;
  }
  else{
    return -1;
  }
}

String UsingIfElse2(int s1, int s2){
  if(s1 > s2){
    return "$s1 greater then $s2"; 
  }
  else if(s2 > s1){
    return "$s2 greater then $s1";
  }
  else
    return "equal numbers";
}

//Ternary if using sample
// two => ?? means "null control"
String UsingTernaryIf(int n1, int n2){
  String littleOne = n1>n2 ? "$n2 less then $n1" : "$n1 less then $n2"; 
  return littleOne;
}

//Print numbers 0 to 10
void UsingForLoop(){
  for(int i=0;i<10;i++){
    print(i);
  }
}

//Print names in List
void UsingList(){
  List names = ["Kaya", "Oğuz", "Can"];
  for (var item in names) {
    print(item);
  }

  // for (var i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }
}

void UsingWhile(){
  int counter = 0;

  while(counter < 5){
    print(counter);
    counter++;
  }
}

void UsingDoWhile(){
  int counter = 0;
  print("do while");
  do{
    print(counter);
    counter++;
  }
  while(counter < 5);
}

int Sum(int s1, int s2) => s1 + s2;

class Employee{

}