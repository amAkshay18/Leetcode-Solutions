class Solution {
  int minimumDistance(List<int> nums) {
    int len = nums.length;
    List<int> last2 = List.filled(len, 0);
    int res = 200;
    for (int i = 0; i < len; i++) {
      int val = nums[i] - 1;
      int pos = i + 1;
      int pack = last2[val];
      int old = pack & 255;
      int cur = pack >> 8;
      last2[val] = cur | (pos << 8);
      if (old > 0) {
        res = res < ((pos - old) << 1) ? res : ((pos - old) << 1);
      }
    }
    return res == 200 ? -1 : res;
  }
}