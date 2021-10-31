import 'package:test/test.dart';
import 'qsort.dart';

void main() {
  test('Qsort to number_1 .', () {
    expect(Qsort([1, 3, 5, 7, 9], 0, 4), [1, 3, 5, 7, 9]);
  });

  test('Qsort to numer_2.', () {
    expect(Qsort([-1, -3, -5, -7, -9, 11], 0, 5), [-9, -7, -5, -3, -1, 11]);
  });
}
