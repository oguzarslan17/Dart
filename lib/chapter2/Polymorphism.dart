class Soldier{
  void Attack(){
    print("Forward");
  }

  void Defence(){
    print("Take Position");
  }
}

class Major extends Soldier{
  @override
  void Attack(){
    print("No Need to Fight");
  }
}

class Captain extends Soldier{
  @override
  void Attack(){
    print("Bekle ecelin geliyor bekle.");
  }
}