// Solution 1
// class Solution {
//   int gcdOfOddEvenSums(int n) {
//     return n;
//   }
// }

// Solution 2
class Solution {
  int gcdOfOddEvenSums(int n) {
    int sumOdd = 0;
    int sumEven = 0;
    int countOdd = 0;
    int countEven = 0;

    int currentNumber = 0;

    while(countOdd != n && countEven != n){
        currentNumber++;
        if(currentNumber % 2 != 0){
            countOdd++;
            sumOdd+=currentNumber;
        }else{
            countEven++;
            sumEven+=currentNumber;
        }
    }

    return sumOdd.gcd(sumEven);
  }
}