import 'package:test/test.dart';
import 'qsort.dart';

void main() {
  test('q sort', () {
    expect(quickSort([0, 3, 2, 5, 7, 9, 6, 1, 4, 8], 0, 9),
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
  });
}
