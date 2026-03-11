class Solution {
  int bitwiseComplement(int n) {
    String s = '';
    var a = n.toRadixString(2);
    for (int i = 0; i < a.length; i++) {
      if (a[i] == '0')
        s += '1';
      else
        s += '0';
    }
    return int.parse(s, radix: 2);
  }
}
