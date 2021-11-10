class Champion {
  String name = '';
  void SkillofChampion() {
    print("I'm $name, My Skill is ...");
  }
}

mixin BasicSkill on Champion {
  void basicskill() => print('My name is $name, I have Basic Skill QWER.');
}

mixin Damage {
  void damage() => print('I have very high Damage.');
}

mixin Control {
  void control() => print('I have many control skill.');
}

mixin Tank {
  void tank() => print('I have very high HP / Recover Ability.');
}

// Pure inheritance.
class Varus extends Champion {
  String name = 'Varus';
}

// Re`implements` all the method of `SuperHero`.
class Syndra implements Champion {
  String name = 'Syndra';

  // Don't need `@override`.
  void SkillofChampion() {
    print("I'm $name has High Damage and some control.");
  }
}

class ADC extends Champion with Damage {
  String name = 'AD Carry';

  @override
  void SkillofChampion() {
    print("I'm $name, ");
    damage();
  }
}

class Top_Tank extends Champion with Control, Tank {
  String name = 'Top tank';

  @override
  void SkillofChampion() {
    control();
    tank();
  }
}

void main() {
  var varus = Varus();
  var top_tank = Top_Tank();
  var adc = ADC();
  var syndra = Syndra();

  varus.SkillofChampion();
  top_tank.SkillofChampion();
  adc.SkillofChampion();
  syndra.SkillofChampion();
}
