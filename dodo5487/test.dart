class SuperHero {
  String name = '';
  void mySuperPower() {
    print("I'm $name, My super power is ...");
  }
}

// Regulate this mixin to be used only in `SuperHero`'s
// subclass. Because we use instance variable `name` that
// is only define in `SuperHero`.
mixin Fly on SuperHero {
  void fly() => print('My name is $name, I can fly.');
}

class RaserEyes {
  void raserEyes() => print('I have raser eyes.');
}

class Strength {
  void strength() => print('I have super strength.');
}

// Pure inheritance.
class Batman extends SuperHero {
  String name = 'Batman';
}

// Re`implements` all the method of `SuperHero`.
class Flash implements SuperHero {
  String name = 'Flash';

  // Don't need `@override`.
  void mySuperPower() {
    print("I'm $name. I'm fast.");
  }
}

class WonderWoman extends SuperHero with Strength {
  String name = 'Wonder Woman';

  @override
  void mySuperPower() {
    print("I'm $name, ");
    strength();
  }
}

class Superman extends SuperHero with Fly, RaserEyes, Strength {
  String name = 'Superman';

  @override
  void mySuperPower() {
    fly();
    raserEyes();
    strength();
  }
}

void main() {
  var batman = Batman();
  var superman = Superman();
  var wonderWoman = WonderWoman();
  var flash = Flash();

  batman.mySuperPower();
  superman.mySuperPower();
  wonderWoman.mySuperPower();
  flash.mySuperPower();
}
