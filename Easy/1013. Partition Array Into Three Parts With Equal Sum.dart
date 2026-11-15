class Solution {
  bool canThreePartsEqualSum(List<int> arr) {
    int total = 0;
    int count = 0;
    int sum = 0;
    for (int num in arr) {
      total += num;
    }
    if (total % 3 != 0) return false;
    int target = total ~/ 3;
    for (int i = 0; i < arr.length; i++) {
      sum += arr[i];
      if (sum == target) {
        count++;
        sum = 0;
        if (count == 3) {
          return i == arr.length - 1 || true;
        }
      }
    }
    return count >= 3;
  }
}
