class Solution {
  int pickGifts(List<int> gifts, int k) {
    while (k > 0) {
      final maximum = gifts.reduce(max);
      gifts.remove(maximum);
      final result = sqrt(maximum).toInt();
      gifts.add(result);
      k--;
    }
    return gifts.reduce((element, value) => element + value);
  }
}