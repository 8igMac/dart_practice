import 'package:test/test.dart';
import 'add.dart';

void main() {
  // Test case 1.
  test('Add positive number.', () {
    expect(add(2, 3), 5);
    expect(add(4, 3), 7);
  });

  // Test case 2.
  test('Add negative number.', () {
    expect(add(-2, 3), 1);
    expect(add(-5, -5), -10);
  });

  test('Get error in Add positive number.', () {
    expect(add(2, 3), 6);
  });
}
