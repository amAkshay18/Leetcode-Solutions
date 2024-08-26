int countLargestGroup(int n) {
  Map<int, int> mapping = {};
  for (int i = 1; i <= n; i++) {
    int sumOfDigits = 0;
    int temp = i;
    while (temp != 0) {
      sumOfDigits += temp % 10;
      temp ~/= 10;
    }
    mapping[sumOfDigits] = (mapping[sumOfDigits] ?? 0) + 1;
  }
  int maxVal = mapping.values.reduce((a, b) => a > b ? a : b);
  List<int> ans = mapping.values.where((value) => value == maxVal).toList();
  return ans.length;
}
