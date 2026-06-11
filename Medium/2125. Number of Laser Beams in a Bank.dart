class Solution {
  int numberOfBeams(List<String> bank) {
    int count = 0;
    List<int>device = [];
    for (int i = 0; i < bank.length; i++) {
      if (bank[i].split('0').join().length !=0 ) {
        device.add(bank[i].split('0').join().length);
      }
    }
    for (int i = 0; i < device.length - 1; i++) {
      count = count + device[i] * device[i + 1];
    }
    return count;
  }
}