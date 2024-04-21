bool validMountainArray(List<int> arr) {
  int n = arr.length;
  int peakIndex = 0;
  for (int i = 1; i < n; i++) {
    if (arr[i] > arr[peakIndex]) {
      peakIndex = i;
    } else if (arr[i] == arr[peakIndex]) {
      return false;
    }
  }
  for (int i = 1; i <= peakIndex; i++) {
    if (arr[i] <= arr[i - 1]) {
      return false;
    }
  }
  for (int i = peakIndex + 1; i < n; i++) {
    if (arr[i] >= arr[i - 1]) {
      return false;
    }
  }
  return peakIndex > 0 && peakIndex < n - 1;
}

void main() {
  // Example usage:
  List<int> arr = [1, 2, 3, 4, 5, 4, 3, 2, 1];
  print(validMountainArray(arr)); // Output: true
}
