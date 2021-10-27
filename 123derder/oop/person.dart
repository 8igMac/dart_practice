class Person {
  String name = '';
  int age = 0;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  bool get isMiddleAge => this.age >= 40;

  void tenYearsLater() {
    this.age += 10;
  }
}
