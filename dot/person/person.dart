class Person {
  String? _name;
  int? _age;

  Person(this._name, this._age);

  String? get getName => _name;
  int? get getAge => _age;

  set setName(String name) => _name = name;
  set setAge(int age) => _age = age;

  bool get isMiddleAge {
    if (this.getAge! >= 40) {
      return true;
    } else {
      return false;
    }
  }

  void tenYearsLater() {
    int age = this.getAge!;
    age += 10;
    this.setAge = age;
  }
}
