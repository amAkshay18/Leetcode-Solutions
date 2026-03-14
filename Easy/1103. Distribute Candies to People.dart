class Solution {
  List<int> distributeCandies(int candies, int num_people) {
    List<int> result = List.filled(num_people, 0);
    int person = 0;
    int candyToGive = 1;
    while (candies > 0) {
      int currentPerson = person % num_people;
      if (candies < candyToGive) {
        result[currentPerson] += candies;
        break;
      }
      result[currentPerson] += candyToGive;
      candies -= candyToGive;
      candyToGive++;
      person++;
    }
    return result;
  }
}
