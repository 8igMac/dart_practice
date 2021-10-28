import 'package:test/test.dart';
import 'person.dart';

void main() {
  test('Person', () {
    var person1 = Person('Bob', 30);
    expect(person1.getName, 'Bob');
    expect(person1.getAge, 30);
    expect(person1.isMiddleAge, false);
    person1.tenYearsLater();
    expect(person1.isMiddleAge, true);
    expect(person1.getAge, 40);
  });
  test('Person (check null safety)', () {
    var name;
    var age;
    var person1 = Person(name, age);
    expect(person1.getAge, null);
    expect(person1.getName, null);
  });
}
