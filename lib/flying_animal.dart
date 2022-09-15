import 'package:exercise_e2/animal.dart';

class FlyingAnimal extends Animal{
  double flyingSpeed;

  FlyingAnimal(String name, [this.flyingSpeed = 3.14]) : super(name: name, legCount: 2, hasWings: true);

  fly() {
    print("$name is flying at $flyingSpeed");
  }
}



