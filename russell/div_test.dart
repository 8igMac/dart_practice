// Must import dart test library.
import 'package:test/test.dart';
// Import your feature code.
import 'div.dart';

void main() {
  group('Division', () {
    test('value of divisible', () {
      expect(div(8, 4), 2);
      expect(div(9, 3), 3);
    });

    test('value of non-divisible', () {
      expect(div(19, 2), 9);
      expect(div(21, 6), 3);
      expect(div(21, 5), 4);
    });
    test('value of division by 0', () {
      expect(()=> div(5, 0), throwsA(isA<IntegerDivisionByZeroException>()));
      expect(()=> div(8, 0), throwsA(isA<IntegerDivisionByZeroException>()));
      expect(()=> div(7, 0), throwsA(isA<IntegerDivisionByZeroException>()));
    });
  });
}
