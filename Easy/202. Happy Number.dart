bool isHappy(int n) {
  Set<int> nums = {};
  while (n != 1 && !nums.contains(n)) {
    nums.add(n);
    int sum = 0;
    while (n > 0) {
      int digit = n % 10;
      sum += digit * digit;
      n ~/= 10;
    }
    n = sum;
  }
  return n == 1;
}

void main() {
  //Example 1
  int n = 19;
  bool result = isHappy(n);
  print("Example1 ${result}");
  //Example 1
  int num = 2;
  bool result2 = isHappy(num);
  print("Example1 ${result2}");
}
