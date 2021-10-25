import 'package:test/test.dart';
import 'sub.dart';

void main() {
  test('Sub: result are negative', () {
  expect(sub(-2, -1), -1);
  expect(sub(1000, 2000), -1000);
});
test('Sub: result are positive', () {
  expect(sub(-2, -3), 1);
  expect(sub(123, 23), 100);
});
test('Sub: result are zero', () {
  expect(sub(0, 0), 0);
  expect(sub(100, 100), 0);
  expect(sub(-6, -6), 0);
});
}
