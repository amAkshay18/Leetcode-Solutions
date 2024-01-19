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
