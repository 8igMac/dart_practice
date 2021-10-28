import 'package:test/test.dart';
import 'person.dart';

void main() {
  test('Person', () {
    var person1 = Person('Bob', 30);
    expect(person1.name, 'Bob');
    expect(person1.age, 30);
    expect(person1.isMiddleAge, false);
    person1.tenYearsLater();
    expect(person1.isMiddleAge, true);
    expect(person1.age, 40);
  });
}
