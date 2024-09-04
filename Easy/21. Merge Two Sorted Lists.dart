//  * Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? head1 = list1;
    ListNode? head2 = list2;
    ListNode? head3;
    ListNode? tail;
    while (head1 != null && head2 != null) {
      if (head1.val < head2.val) {
        ListNode? newNode = ListNode(head1.val);
        if (head3 == null) {
          head3 = newNode;
          tail = newNode;
          head1 = head1.next;
        } else {
          tail?.next = newNode;
          tail = newNode;
          head1 = head1.next;
        }
      } else {
        ListNode? newNode = ListNode(head2.val);
        if (head3 == null) {
          head3 = newNode;
          tail = newNode;
          head2 = head2.next;
        } else {
          tail?.next = newNode;
          tail = newNode;
          head2 = head2.next;
        }
      }
    }
    while (head1 != null) {
      ListNode? newNode = ListNode(head1.val);
      if (head3 == null) {
        head3 = newNode;
        tail = newNode;
        head1 = head1.next;
      } else {
        tail?.next = newNode;
        tail = newNode;
        head1 = head1.next;
      }
    }
    while (head2 != null) {
      ListNode? newNode = ListNode(head2.val);
      if (head3 == null) {
        head3 = newNode;
        tail = newNode;
        head2 = head2.next;
      } else {
        tail?.next = newNode;
        tail = newNode;
        head2 = head2.next;
      }
    }
    return head3;
  }
}
