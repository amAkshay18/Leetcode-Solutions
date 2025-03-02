  List<List<int>> mergeArrays(List<List<int>> nums1, List<List<int>> nums2) {
    nums1.addAll(nums2);
    nums1.sort((a, b) => a[0].compareTo(b[0]));
    int n = nums1.length;
    for (int i = 0; i < n - 1; i++) {
      if (nums1[i][0] == nums1[i + 1][0]) {
        nums1[i][1] += nums1[i + 1][1];
        nums1.removeAt(i + 1);
        n--;
        i--;
      }
    }
    return nums1;
  }