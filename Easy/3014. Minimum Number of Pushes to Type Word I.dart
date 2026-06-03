class Solution {
  int minimumPushes(String word) {
   int count = 1;
   int result = 0;
   for (int i = 1; i <= word.length; i++) {
    result += count;
    if (i %8 == 0) count++;
   }
   return result ;
  }
}