List<int> evenOddBit(int n) {
  if (n == 0) return [0, 0];
  String binary = n.toRadixString(2);
  List<int> result = [0, 0];
  for (int i = 0; i < binary.length; i++) {
    if (binary[binary.length - 1 - i] == '1') {
      if (i % 2 == 0) {
        result[0]++;
      } else {
        result[1]++;
      }
    }
  }
  return result;
}
