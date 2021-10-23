import 'package:test/test.dart';
import 'mul.dart';

void main() {
  test('Multiply two positive number.', () {
    expect(mul(8, 7), 56);
  });

  test('Multiply two negative number.', () {
    expect(mul(-2, -5), 10);
  });

  test('Multiply two number.', () {
    expect(mul(-2, 5), -10);
  });
}
