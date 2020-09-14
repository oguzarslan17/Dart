//Sample example1
class Vehicle{
  String BrandName;
  String ModelName;
  String Color;
  int ModelYear;

  void Break(){
    print("Vehivle slows down");
  }
}

class Bus extends Vehicle{
  int Capacity;
  int size;
  @override
  void Break(){
    print("Bus slows down");
  }
}