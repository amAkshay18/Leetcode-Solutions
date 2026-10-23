class Solution {
  List<String> nums = [];
  String kthDistinct(List<String> arr, int k) {
    for (var i = 0; i < arr.length; i++) {
      int count = 0;
      for (var j = 0; j < arr.length; j++) {
        if (i != j && arr[i] == arr[j]) count++;
      }
      if (count == 0) nums.add(arr[i]);
    }
    if (k > nums.length) return '';
    return nums[k - 1];
  }
}
