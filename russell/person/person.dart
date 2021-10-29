class Person {
  final String name;
  int age;

  Person(this.name, this.age);

  bool get isMiddleAge => age >= 40;

  void tenYearsLater() {
    this.age += 10;
  }
}
