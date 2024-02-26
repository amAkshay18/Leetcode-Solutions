//Solution1
bool threeConsecutiveOdds(List<int> arr) {
  int count = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 != 0) {
      if (count == 3) return true;
    } else {
      count = 0;
    }
  }
  return false;
}

//Solution2
bool threeConsecutiveOdds2(List<int> arr) {
  for (int i = 0; i < arr.length - 2; i++) {
    if (arr[i] % 2 != 0 && arr[i + 1] % 2 != 0 && arr[i + 2] % 2 != 0)
      return true;
  }
  return false;
}
