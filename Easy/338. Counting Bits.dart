List<int> countBits(int n) {
  List<int> ans = [];
  for (int i = 0; i <= n; i++) {
    String binary = i.toRadixString(2);
    int sum = binary.split('').map(int.parse).reduce((a, b) => a + b);
    ans.add(sum);
  }
  return ans;
}

void main() {
  var result1 = countBits(2);
  print(result1);
  var result2 = countBits(5);
  print(result2);
}
