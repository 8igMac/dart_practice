void swap(List<int> x, int a, int b) {
  int tmp = x[a];
  x[a] = x[b];
  x[b] = tmp;
}

int partition(List<int> x, int low, int high) {
  int pivot = x[high];
  int i = low - 1;

  for (int j = low; j <= high - 1; j++) {
    if (x[j] < pivot) {
      i++;
      swap(x, i, j);
    }
  }
  swap(x, i + 1, high);
  return i + 1;
}

List<int> Qsort(List<int> x, int low, int high) {
  if (low < high) {
    int pi = partition(x, low, high);

    Qsort(x, low, pi - 1);
    Qsort(x, pi + 1, high);
  }
  return x;
}

void main() {
  print(Qsort([-5, -7, -19, -3, -66], 0, 4));
}
