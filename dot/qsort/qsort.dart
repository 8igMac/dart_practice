void swap(List<int> list, int i, int j) {
  int tmp = list[i];
  list[i] = list[j];
  list[j] = tmp;
}

int partition(List<int> list, int left, int right) {
  final pivot = list[left + (right - left) ~/ 2];
  int i = left - 1;
  int j = right + 1;
  while (true) {
    do {
      i++;
    } while (list[i] < pivot);

    do {
      j--;
    } while (list[j] > pivot);

    if (i >= j) {
      return j;
    }
    swap(list, i, j);
  }
}

List<int> qsort(List<int> list, int left, int right) {
  if (left < right) {
    int mid = partition(list, left, right);
    qsort(list, left, mid);
    qsort(list, mid + 1, right);
  }
  return list;
}
