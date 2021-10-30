class Pokemon {
  String name = '';

  void go_mypokemon() {
    print("\n-------- $name ---------\n Skill:\n");
  }
}

mixin Ember {
  void ember() => print('*ember*');
}

mixin Thunderbolt {
  void thunderbolt() => print('*thunderbolt*');
}

mixin Bubble {
  void bubble() => print('*bubble*');
}

mixin Tackle {
  void tackle() => print('*tackle*');
}

mixin Run_Away {
  void run_away() => print('*run away*');
}

class Pikachu extends Pokemon {
  String name = 'Pikachu';
}

class Squirtle extends Pokemon with Bubble, Tackle, Run_Away {
  String name = 'Squirtle';

  @override
  void go_mypokemon() {
    print("-------- $name ---------\n (with poison !!!)\nSkill:\n");
    bubble();
    tackle();
    run_away();
  }
}

class Charmander with Ember, Run_Away implements Pokemon {
  String name = 'Charmander';

  void go_mypokemon() {
    print("-------- $name ---------\n (want to sleeping)\nSkill:\n");
    ember();
    run_away();
  }
}

void main() {
  var pikachu = Pikachu();
  var squirtle = Squirtle();
  var charmander = Charmander();

  pikachu.go_mypokemon();
  squirtle.go_mypokemon();
  charmander.go_mypokemon();
  print('\n');
}
