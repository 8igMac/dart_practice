void swap(List<int> arr, int a, int b) {
  int t = arr[a];
  arr[a] = arr[b];
  arr[b] = t;
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high]; // pivot
  int i = (low - 1); // Index of smaller element

  for (int j = low; j <= high - 1; j++) {
    // If current element is smaller than or
    // equal to pivot
    if (arr[j] <= pivot) {
      i++; // increment index of smaller element
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, high);
  return (i + 1);
}

List<int> quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);

    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
  return arr;
}
