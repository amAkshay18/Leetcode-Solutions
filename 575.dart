class Solution {
  int distributeCandies(List<int> candyType) {
    Set<int> differentTypes = candyType.toSet();
    int maximumNumber = candyType.length ~/ 2;
    if (maximumNumber < differentTypes.length) {
      return maximumNumber;
    } else {
      return differentTypes.length;
    }
  }
}
