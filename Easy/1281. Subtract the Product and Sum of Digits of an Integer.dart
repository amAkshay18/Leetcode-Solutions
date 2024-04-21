int subtractProductAndSum(int n) {
  List<int> digits = n.toString().split('').map(int.parse).toList();
  int productOfDigits = digits.reduce((a, b) => a * b);
  int sumOfDigits = digits.reduce((a, b) => a + b);
  return productOfDigits - sumOfDigits;
}
