// 1207. Unique Number of Occurrences
// Given an array of integers arr, return true if the number of occurrences of
//each value in the array is unique or false otherwise.

// Example 1:

// Input: arr = [1,2,2,1,1,3]
// Output: true
// Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
// Example 2:

// Input: arr = [1,2]
// Output: false
// Example 3:

// Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
// Output: true

// Intuition:
// The goal is to determine if the occurrences of numbers in a list are unique. For example,
// if we have a list [1, 2, 2, 3, 3, 3], the counts of occurrences for each number
// are [1: 1 time, 2: 2 times, 3: 3 times]. We want to check if these occurrence counts are unique.

// Approach:
// Create a frequencyMap to count how many times each number appears in the list.
// Store these counts in a frequencySet to keep track of unique occurrences.
// If any count appears more than once in the frequencySet, return false because
// it means there are duplicate occurrence counts.
// If all counts are unique, return true.

// Explanation:
// frequencyMap: It's like a tally sheet, counting how many times each number appears in the list.
// frequencySet: It stores unique counts from the frequencyMap.
// Checking uniqueness: By adding each count to the frequencySet, if adding a count
// fails (because it's already there), it means that count is not unique, and we return false.
// If all counts are added successfully without any failures, it means all counts are unique, and we return true.

// Time Complexity:
// Iterating through the list: O(n), where n is the number of elements in the input list.
// Counting occurrences: O(n), as we iterate through the list once.
// Adding to the set: O(1) average case (amortized), assuming set insertion is constant time.
// Overall, the time complexity is O(n) due to the single iteration through the list.

// Space Complexity:
// frequencyMap: O(n), where n is the number of unique elements in the input list.
// frequencySet: O(n), in the worst case when all elements have different counts.
// Thus, the space complexity is O(n) due to the storage of counts in the map and set.

// This solution offers an efficient way to determine if the counts of occurrences of numbers
// in the list are unique, enabling a quick check for uniqueness using a map and a set.
class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> frequencyMap = {};
    Set<int> frequencySet = {};
    for (int number in arr) {
      frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
    }
    for (int count in frequencyMap.values) {
      if (!frequencySet.add(count)) {
        return false;
      }
    }
    return true;
  }
}
