class Vehicle {
  String name = "";
  int maxSpeed = 0;

  void info() => print("$name's max speed: $maxSpeed");
}

mixin Air on Vehicle {
  void air() => print("$name, flies in the sky");
}

mixin Land on Vehicle {
  void land() => print("$name, runs on the land");
}

mixin Ocean on Vehicle {
  void ocean() => print("$name, sails on the ocean");
}

class Boeing extends Vehicle with Air {
  String name = "Boeing 747-400";
  int maxSpeed = 878;
}

class Taroko implements Vehicle {
  String name = "Taroko Express";
  int maxSpeed = 150;
  int trackGauge = 1067;
  var debut = DateTime(2007, 5, 8);

  void info() {
    print("$name is part of Tze-Chiang Limited Express");
    print("Debut at $debut");
  }
}

class Titanic extends Vehicle with Ocean {
  String name = "Titanic";
  int maxSpeed = 44;

  @override
  void info() {
    ocean();
    print("$name sank in the early morning of 15 April 1912 😥");
  }
}

class LP610 extends Vehicle with Land {
  String name = "LP610-4";
  int maxSpeed = 324;
  int hp = 610;

  @override
  void info() {
    land();
    print("$name's hp: $hp");
  }
}

class Terraquad extends Vehicle with Ocean, Land {
  String name = "Gibbs Terraquad";
  int maxSpeed = 80;
  @override
  void info() {
    ocean();
    land();
  }
}

void main() {
  var boeing = Boeing();
  var lp610 = LP610();
  var titanic = Titanic();
  var terraquad = Terraquad();
  var taroko = Taroko();
  boeing.info();
  lp610.info();
  titanic.info();
  terraquad.info();
  taroko.info();
}
