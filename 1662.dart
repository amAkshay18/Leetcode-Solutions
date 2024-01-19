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
