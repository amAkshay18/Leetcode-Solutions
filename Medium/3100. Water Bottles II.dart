class Solution {
  int maxBottlesDrunk(int numBottles, int numExchange) {
    int result = numBottles; 
    int empty = numBottles;
    while (empty >= numExchange) {
      empty -= numExchange;
      numExchange++; 
      result++; 
      empty++;
    }
    return result;
  }
}