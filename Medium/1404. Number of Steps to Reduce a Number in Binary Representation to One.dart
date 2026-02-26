class Solution {
  int numSteps(String s) {
    int steps = 0;
    List<String> binary = s.split('');
    while (!(binary.length == 1 && binary[0] == '1')) {
      if (binary.last == '0') {
        binary.removeLast();
      } else {
        int i = binary.length - 1;
        while (i >= 0 && binary[i] == '1') {
          binary[i] = '0';
          i--;
        }
        if (i >= 0) {
          binary[i] = '1';
        } else {
          binary.insert(0, '1');
        }
      }
      steps++;
    }
    return steps;
  }
}
