
  int numOfSubarrays1(List<int> arr) {
    const int MOD = 1000000007;
    int oddCount = 0, evenCount = 1, prefixSum = 0, result = 0;
    for (int num in arr) {
      prefixSum += num;
      if (prefixSum %2 == 0) {
        result = (result + oddCount) % MOD;
        evenCount++;
      } else {
        result = (result + evenCount) % MOD;
        oddCount++;
      }
    }
    return result;
  }

// Beginner Level Approach, all test cases are accepted but the TIME LIMIT EXCEEDED WHILE SUBMITTING...
int numOfSubarrays2(List<int> arr) {
    List<List<int>> subArr = [];
    List<int> sum = [];
    int count = 0;
    for (int i = 0; i < arr.length; i++) {
      for (int j = i; j < arr.length; j++) {
        List<int> sublist = arr.sublist(i, j + 1);
        subArr.add(sublist);
        sum.add(sublist.reduce((a, b) => a + b)); 
      }
    }
    for (int i = 0; i < sum.length; i++) {
      if (sum[i] %2 != 0) count++;
    }
    return count;
  }