class Person {
  final String name;
  int age;

  Person(this.name, this.age);

  bool get isMiddleAge {
    if (this.age >= 40) {
      return true;
    } else {
      return false;
    }
  }

  void tenYearsLater() {
    age += 10;
  }
}
