int hammingWeight(int n) {
  String binaryString = n.toRadixString(2);
  int count = 0;
  for (int i = 0; i < binaryString.length; i++) {
    if (binaryString[i] == '1') count++;
  }
  return count;
}

void main() {
  int result1 = hammingWeight(11);
  print(result1);

  int result2 = hammingWeight(128);
  print(result2);

  int result3 = hammingWeight(2147483645);
  print(result3);
}
