int findComplement(int num) {
  String complementBinary = '';
  List<String> binaryDigits = num.toRadixString(2).split('');
  for (int i = 0; i < binaryDigits.length; i++) {
    binaryDigits[i] == '1' ? complementBinary += '0' : complementBinary += '1';
  }
  return int.parse(complementBinary, radix: 2);
}

//Solution 2
int findComplement2(int num) {
  String binary = num.toRadixString(2);
  List<String> binaryList = binary.split('');
  for (int i = 0; i < binaryList.length; i++) {
    if (binaryList[i] == '1') {
      binaryList[i] = '0';
    } else {
      binaryList[i] = '1';
    }
  }
  String complementBinary = binaryList.join('');
  int complement = int.parse(complementBinary, radix: 2);
  return complement;
}
