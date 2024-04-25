//solution 1
bool checkIfExist(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length; j++) {
      if (i != j && arr[i] == 2 * arr[j]) {
        return true;
      }
    }
  }
  return false;
}

//solution2
bool checkIfExits(List<int> arr) {
  Set<int> seen = {};
  for (var num in arr) {
    if (seen.contains(num * 2) || (num % 2 == 0 && seen.contains(num ~/ 2)))
      return true;
    seen.add(num);
  }
  return false;
}
