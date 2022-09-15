
class Animal {
  String name;
  int legCount;
  bool hasWings;

  Animal({required this.name, required this.legCount, this.hasWings = false});

  bool get canFly {
    return hasWings;
  }
}



