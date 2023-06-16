// 605. Can Place Flowers
// You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

// Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int length = flowerbed.length;
    if (n == 0) {
      return true;
    }
    for (int i = 0; i < length; i++) {
      if (flowerbed[i] == 0) {
        if ((i == 0 || flowerbed[i - 1] == 0) &&
            (i == length - 1 || flowerbed[i + 1] == 0)) {
          flowerbed[i] = 1;
          n--;
        }
      }
      if (n == 0) {
        return true;
      }
    }
    return false;
  }
}
