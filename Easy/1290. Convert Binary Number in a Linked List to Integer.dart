//  * Definition for singly-linked list.
 class ListNode {
   int val;
   ListNode? next;
   ListNode([this.val = 0, this.next]);
 }
 
class Solution {
  int getDecimalValue(ListNode? head) {
    int result = 0;
    while (head != null) {
      result = result * 2 + head.val;
      head = head.next;
    }
    return result;
  }
}