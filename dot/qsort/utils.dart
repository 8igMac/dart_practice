import 'dart:math';

bool check(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) return false;
  }
  return true;
}

List<int> randomList(int size) {
  List<int> list = [];
  for (int i = 0; i < size; i++) {
    var obj = Random();
    list.add(obj.nextInt(65536));
  }
  return list;
}
