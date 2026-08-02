class Solution {
  bool stoneGame(List<int> piles) {
    int sum = 0;
    for (int i = 0; i < piles.length; i++) {
      sum += piles[i];
    }
    return sum.isOdd ? true : false;
  }
}

/*

The number of piles is always even.
The total number of stones is odd, so a tie is impossible.
Alice can choose to collect either all even-indexed piles or all odd-indexed piles.
Before the game starts, Alice compares the total stones in both parities.
She always selects the parity with the larger total.
Using optimal play, Alice can force Bob to leave her the chosen parity.
Therefore, Alice always ends up with more stones than Bob.
Hence, the answer is always true.
Approach
Observe that the number of piles is even.
Alice decides whether to target the even-indexed or odd-indexed piles.
She chooses the parity having the larger total number of stones.
By playing optimally, she can always secure those piles.
Since Alice is guaranteed to have more stones than Bob, simply return true.
Complexity
Time complexity:

O(1)
Space complexity:

O(1)

*/

class Solution2 {
  bool stoneGame(List<int> piles) {
    return true;
  }
}
