import 'package:test/test.dart';

class Animal {
  String name = "animal";

  void myName() {
    print("I'm $name");
  }

  void printInfo() {
    myName();
  }
}

mixin Fly on Animal {
  void printInfo() {
    super.printInfo();
    print("I can fly");
  }
}

class Bird extends Animal with Fly {
  String name = "bird";
}

void main() {
  Bird bird = Bird();
  bird.printInfo();
}
