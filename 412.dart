// 412. Fizz Buzz
// Given an integer n, return a string array answer (1-indexed) where:

// answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
// answer[i] == "Fizz" if i is divisible by 3.
// answer[i] == "Buzz" if i is divisible by 5.
// answer[i] == i (as a string) if none of the above conditions are true.

// Intuition
// The FizzBuzz problem involves iterating through numbers from 1 to a given number ('n').
// For multiples of 3, print "Fizz," for multiples of 5, print "Buzz," and for numbers that
// are multiples of both 3 and 5, print "FizzBuzz." For other numbers, print the number itself.

// Approach
// Initialize an empty list to store the FizzBuzz output.
// Iterate through numbers from 1 to n.
// Check if the number is divisible by both 3 and 5, in which case add "FizzBuzz" to the list.
// If not, check if the number is divisible by 3, add "Fizz" to the list.
// If not divisible by 3, check if it's divisible by 5, add "Buzz" to the list.
// If none of the above conditions match, add the number as a string to the list.

// Explanation:
// This code uses a loop to go through numbers from 1 to 'n'. For each number,
// it checks whether it's divisible by 3 and/or 5. If it's divisible by both,
// it adds "FizzBuzz" to the list. If divisible only by 3, it adds "Fizz," by 5,
// it adds "Buzz." If not divisible by either, it adds the number itself as a string
// to the list. Finally, it returns the list of FizzBuzz output.

// Complexity
// Time complexity:
// The time complexity of this code is O(n) because it iterates through 'n' numbers once.

// Space complexity:
// The space complexity is also O(n) as it stores the FizzBuzz output in a list of size 'n'.

class Solution {
  List<String> fizzBuzz(int n) {
    List<String> answer = [];

    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        answer.add("FizzBuzz");
      } else if (i % 3 == 0) {
        answer.add("Fizz");
      } else if (i % 5 == 0) {
        answer.add("Buzz");
      } else {
        answer.add(i.toString());
      }
    }
    return answer;
  }
}
