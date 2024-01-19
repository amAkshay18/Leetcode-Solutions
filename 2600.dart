class Solution {
  int kItemsWithMaximumSum(int numOnes, int numZeros, int numNegOnes, int k) {
    if (k <= numOnes) {
      return k;
    } else if (k <= numOnes + numZeros) {
      return numOnes;
    }
    return numOnes - (k - (numOnes + numZeros));
  }
}
