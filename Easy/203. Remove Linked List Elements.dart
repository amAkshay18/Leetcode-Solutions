// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeElements(ListNode? head, int val) {
    while (head != null && head.val == val) {
      head = head.next;
    }
    ListNode? current = head;
    ListNode? prev = null;
    while (current != null) {
      if (current.val == val) {
        prev?.next = current.next;
      } else {
        prev = current;
      }
      current = current.next;
    }
    return head;
  }
}
