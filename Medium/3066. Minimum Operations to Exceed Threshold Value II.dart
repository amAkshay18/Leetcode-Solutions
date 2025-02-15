// import 'package:collection/collection.dart';

class Solution {
  int minOperations(List<int> nums, int k) {
    var heap = HeapPriorityQueue<int>((a, b) => a.compareTo(b));
    nums.forEach(heap.add);
    int ans = 0;
    while (heap.length > 1 && heap.first < k) {
      int num1 = heap.removeFirst();
      int num2 = heap.removeFirst();
      int combined = num1 * 2 + num2;
      heap.add(combined);
      ans++;
    } 
    return ans;
  }
}