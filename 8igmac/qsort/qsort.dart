void swap(List<int> list, int index1, int index2) {
  final temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}

int _partition(List<int> list, int beg, int end) {
  var mid = beg;
  beg++;
  end--;
  while (end >= beg) {
    if (list[end] < list[mid]) {
      swap(list, beg, end);
      beg++;
    } else
      end--;
  }
  swap(list, end, mid);
  return end;
}

void _qsort(List<int> list, int beg, int end) {
  if (end <= beg + 1) return;
  final mid = _partition(list, beg, end);
  _qsort(list, beg, mid);
  _qsort(list, mid + 1, end);
}

List<int> qsort(List<int> list) {
  _qsort(list, 0, list.length);
  return list;
}
