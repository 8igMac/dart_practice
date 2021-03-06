import 'package:test/test.dart';
import 'qsort.dart';

void main() {
  test('Quick sort', () {
    expect(qsort([3, 2, 1, 4]), [1, 2, 3, 4]);
    expect(qsort([5, 7, 2, 3, 8, 1]), [1, 2, 3, 5, 7, 8]);
    expect(qsort([88, 5, 7, 3, 1, 0, 75, 6, 9, 7, 2, 3]),
        [0, 1, 2, 3, 3, 5, 6, 7, 7, 9, 75, 88]);
  });
}
