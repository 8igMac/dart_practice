import 'package:test/test.dart';
import 'person.dart';

void main() {
  test('Person', () {
    var person = Person('russell', 30);
    expect(person.name, 'russell');
    expect(person.age, 30);
    expect(person.isMiddleAge, false);
    person.tenYearsLater();
    expect(person.isMiddleAge, true);
    expect(person.age, 40);
  });
}
