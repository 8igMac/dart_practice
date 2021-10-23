// Must import dart test library.
import 'package:test/test.dart';
// Import your feature code.
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
}
