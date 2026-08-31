import 'dart:math';

int primeFactors(int n) {
  int i = 2;
  Set<int> ans = {};
  while (i * i <= n) {
    while (n % i == 0) {
      ans.add(i);
      n ~/= i;
    }
    i++;
  }
  if (n > 1) {
    ans.add(n);
  }
  return ans.length;
}

class Solution {
  int maximumScore(List<int> nums, int k) {
    int mod = 1000000007;
    int n = nums.length;
    List<List<int>> arr = [];

    for (int i = 0; i < n; i++) {
      arr.add([i, primeFactors(nums[i]), nums[i]]);
    }

    List<int> left = List.filled(n, -1);
    List<int> right = List.filled(n, n);
    List<List<int>> stk = [];

    for (var item in arr) {
      int i = item[0], f = item[1];
      while (stk.isNotEmpty && stk.last[0] < f) {
        stk.removeLast();
      }
      if (stk.isNotEmpty) {
        left[i] = stk.last[1];
      }
      stk.add([f, i]);
    }

    stk.clear();
    for (var item in arr.reversed) {
      int i = item[0], f = item[1];
      while (stk.isNotEmpty && stk.last[0] <= f) {
        stk.removeLast();
      }
      if (stk.isNotEmpty) {
        right[i] = stk.last[1];
      }
      stk.add([f, i]);
    }

    arr.sort((a, b) => b[2].compareTo(a[2]));
    int ans = 1;

    for (var item in arr) {
      int i = item[0], x = item[2];
      int l = left[i], r = right[i];
      int cnt = (i - l) * (r - i);
      if (cnt <= k) {
        ans = (ans * _modularPow(x, cnt, mod)) % mod;
        k -= cnt;
      } else {
        ans = (ans * _modularPow(x, k, mod)) % mod;
        break;
      }
    }
    return ans;
  }

  int _modularPow(int base, int exp, int mod) {
    int result = 1;
    base %= mod;
    while (exp > 0) {
      if (exp % 2 == 1) {
        result = (result * base) % mod;
      }
      base = (base * base) % mod;
      exp ~/= 2;
    }
    return result;
  }
} 