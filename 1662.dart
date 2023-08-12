// 1662. Check If Two String Arrays are Equivalent
// Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.
// A string is represented by an array if the array elements concatenated in order forms the string.

class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    // String firstWord = word1.join('');
    // String secondWord = word2.join('');
    // if(firstWord == secondWord) {
    //    return true;
    // }
    // return false;
    return word1.join() == word2.join();
  }
}
