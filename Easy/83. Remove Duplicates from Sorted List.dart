
//  Definition for singly-linked list.
 class ListNode {
   int val;
   ListNode? next;
   ListNode([this.val = 0, this.next]);
 }
 
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    var currentNode = head;
    while (currentNode?.next != null) {
      if (currentNode?.val == currentNode?.next?.val) {
        currentNode?.next = currentNode.next?.next;
      } else {
        currentNode = currentNode?.next;
      }
    }
    return head;
  }
}