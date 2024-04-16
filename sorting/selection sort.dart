void selectionSort(List<int> arr) {
  int n = arr.length;

  // One by one move boundary of unsorted subarray
  for (int i = 0; i < n - 1; i++) {
    // Find the minimum element in unsorted array
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    // Swap the found minimum element with the first element
    int temp = arr[minIndex];
    arr[minIndex] = arr[i];
    arr[i] = temp;
  }
}

void main() {
  List<int> arr = [64, 25, 12, 22, 11];
  print("Original array: $arr");
  selectionSort(arr);
  print("Sorted array: $arr");
}
