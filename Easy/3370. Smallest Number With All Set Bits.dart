class Solution {
  int smallestNumber(int n) {
    if (n <= 1) return 1;
    int x = 1;
    while (x - 1 < n) {
        x = x << 1; 
    }
    return x - 1;
  }
}