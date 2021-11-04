import 'package:test/test.dart';
import 'sub.dart';

void main() {
  test('A positive double minus a positive double.', () {
    expect(sub(0.01111, 0.000001), 0.011109);
  });
  test('A positive double minus a negative double.', () {
    expect(sub(0.000001, 0.01111), -0.011109);
  });
  test('A negative double minus a positive double.', () {
    expect(sub(-0.01111, -0.000001), -0.011109);
  });
  test('A negative double minus a negative double.', () {
    expect(sub(-0.000001, -0.01111), 0.011109);
  });
}
