class Solution {
  int missingMultiple(List<int> nums, int k) {
    int multiple = k;
    int factor = 2;
    while (nums.contains(multiple)) {
      multiple = k * factor++;
    }
    return multiple;
  }
}