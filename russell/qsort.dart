import "dart:math";

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

void swap(List<int> nums_lst, int index_1, int index_2) {
  int tmp = nums_lst[index_1];
  nums_lst[index_1] = nums_lst[index_2];
  nums_lst[index_2] = tmp;
}

List<int> qsort_rec(List<int> nums_lst, int start, int end) {
  if (start < end) {
    int pk = nums_lst[start];
    int i = start;
    int j = end;

    while (i < j) {
      while (nums_lst[i] <= pk && i < end) i += 1;
      while (nums_lst[j] > pk && j > start) j -= 1;
      if (i < j) swap(nums_lst, i, j);
    }

    swap(nums_lst, start, j);
    qsort_rec(nums_lst, start, j - 1);
    qsort_rec(nums_lst, j + 1, end);
  }
  return nums_lst;
}

List<int> qsort(List<int> nums_lst) {
  bool is_sort;
  is_sort = check_sort(nums_lst);
  if (is_sort) {
    print("$nums_lst already sort");
    return nums_lst;
  } else {
    List<int> sort_lst = qsort_rec(nums_lst, 0, nums_lst.length - 1);
    return sort_lst;
  }
}

void main() {
  final seed = 5;
  final size = 50;
  final max_num = 200;
  var rng = new Random();
  var nums_lst = new List.generate(size, (_) => rng.nextInt(max_num));
  nums_lst = [4, 4, 3];
  print(nums_lst);
  List<int> sort_lst = qsort(nums_lst);
  print(sort_lst);
  bool is_sort = check_sort(sort_lst);
  print(is_sort);
}
