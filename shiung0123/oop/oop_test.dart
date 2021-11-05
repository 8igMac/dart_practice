import 'package:test/test.dart';

class Person {
	String name;
	int age;
	
	Person.allargs(this.name, this.age);
	
	bool isMiddleAge() {
		return age >= 40;
	}
	
	void tenYearsLater() {
		age += 10;
	}
}

void main() {
  test('Person Class', () {
    Person person1 = Person.allargs('Bob', 30);
    expect(person1.name, 'Bob');
    expect(person1.age, 30);
    expect(person1.isMiddleAge(), false);
    person1.tenYearsLater();
    expect(person1.isMiddleAge(), true);
    expect(person1.age, 40);
  });
}
