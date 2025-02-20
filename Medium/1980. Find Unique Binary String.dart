  String findDifferentBinaryString(List<String> nums) {
    List<String> result = [];
    for (int i = 0; i < nums.length; i++) {
      result.add(nums[i][i] == '0' ? '1' : '0');
    }
    return result.join();
  }