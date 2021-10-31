import 'package:test/test.dart';
import 'qsort.dart';
import 'dart:math';

bool check_sort(List<int> nums_lst) {
  int index = 0;
  while (index + 1 < nums_lst.length) {
    if (nums_lst[index] <= nums_lst[index + 1]) {
      index += 1;
    } else
      return false;
  }
  return true;
}

void main() {
  group('Quick sort', () {
    test("Positive number sort", () {
      expect(qsort([6, 5, 4]), [4, 5, 6]);
      expect(qsort([2, 3, 1]), [1, 2, 3]);
      expect(qsort([3, 3, 3]), [3, 3, 3]);
    });
    test("Negative number sort", () {
      expect(qsort([-3, -4, -5]), [-5, -4, -3]);
      expect(qsort([-2, -1, -3]), [-3, -2, -1]);
      expect(qsort([-1, -1, -1]), [-1, -1, -1]);
    });
    test("Mixed number sort", () {
      expect(qsort([2, 1, -1]), [-1, 1, 2]);
      expect(qsort([-3, 3, -4]), [-4, -3, 3]);
    });
    test("Random number sort", () {
      final size = 50;
      final max_num = 200;
      var rng = new Random();
      var nums_lst = new List.generate(size, (_) => rng.nextInt(max_num));
      expect(check_sort(qsort(nums_lst)), true);
    });
  });
}
