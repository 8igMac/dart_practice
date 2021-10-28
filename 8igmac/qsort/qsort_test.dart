import 'package:test/test.dart';
import 'qsort.dart';
import 'dart:math';

bool isSorted(List<int> list) {
  for (var i = 0; i < list.length - 1; i++)
    if (list[i] > list[i + 1]) return false;
  return true;
}

void main() {
  group('Quick sort: ', () {
    test('Simple sort.', () {
      expect(qsort([3, 2, 1]), [1, 2, 3]);
      expect(qsort([1, 2, 3]), [1, 2, 3]);
      expect(qsort([1, 1, 1]), [1, 1, 1]);
    });

    test('Mixed numbers', () {
      expect(qsort([3, -2, 1]), [-2, 1, 3]);
    });

    test('Random numbers.', () {
      const seed = 4;
      const listSize = 100;
      const maxNum = 100;
      var rng = Random(seed);
      var randomNumbers = List.generate(listSize, (_) => rng.nextInt(maxNum));
      expect(isSorted(qsort(randomNumbers)), true);
    });
  });
}
