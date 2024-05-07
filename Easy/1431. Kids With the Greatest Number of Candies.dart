import 'dart:math';

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  List<bool> result = [];
  int largest = candies.reduce(max);
  for (int i = 0; i < candies.length; i++) {
    if (candies[i] + extraCandies >= largest) {
      result.add(true);
    } else {
      result.add(false);
    }
  }
  return result;
}
