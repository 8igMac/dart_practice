import 'package:test/test.dart';
import 'QS.dart';

void main() {
  test('All different positive number.', () {
    expect(Qsort([5, 7, 1, 3, 9], 0, 4), [1, 3, 5, 7, 9]);
  });

  test('All different negative number.', () {
    expect(Qsort([-5, -7, -19, -3, -66], 0, 4), [-66, -19, -7, -5, -3]);
  });

  test('All kinds of number.', () {
    expect(Qsort([3, 8, -19, 87, 3], 0, 4), [-19, 3, 3, 8, 87]);
  });
}
