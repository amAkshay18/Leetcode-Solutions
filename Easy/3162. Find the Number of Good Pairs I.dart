class Solution {
  int numberOfPairs(List<int> nums1, List<int> nums2, int k) {
    int count = 0;
    for (int i = 0; i < nums1.length; i++) {
      int first = nums1[i];
      for (int j = 0; j < nums2.length; j++) {
        int second = nums2[j] * k;
        if (first % second == 0) {
          count++;
        }
      }
    }
    return count;
  }
}
