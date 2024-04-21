int findKthPositive(List<int> arr, int k) {
  for (int i in arr) {
    if (i <= k) {
      k++;
    } else {
      break;
    }
  }
  return k;
}
