import 'package:test/test.dart';
import 'sub.dart';

void main() {
  test('A positive integer minus a positive integer.', () {
    expect(sub(1, 9007199254740991), -9007199254740990);
  });
  test('A positive integer minus a negative integer.', () {
    expect(sub(1, -9007199254740990), 9007199254740991);
  });
  test('A negative integer minus a positive integer.', () {
    expect(sub(-1, 9007199254740990), -9007199254740991);
  });
  test('A negative integer minus a negative integer.', () {
    expect(sub(-1, -9007199254740991), 9007199254740990);
  });
}
