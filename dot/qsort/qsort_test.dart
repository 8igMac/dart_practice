import 'package:test/test.dart';

import 'qsort.dart';
import 'utils.dart';

void main() {
  test('sort!', () {
    expect(qsort([0, 3, 2], 0, 2), [0, 2, 3]);
  });

  test('sort!', () {
    List<int> list = randomList(65536);
    expect(check(qsort(list, 0, list.length - 1)), true);
  });
}
