/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? first = head;
    ListNode? second = head;
    while (first != null && first.next != null) {
      first = first.next?.next;
      second = second?.next;
    }
    return second;
  }
}

void main() {
  Solution solution = Solution();
  print('case1');
  // Test case 1
  ListNode? head1 =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
  printList(solution.middleNode(head1)); // Output: [3,4,5]

  print('case2');
  // Test case 2
  ListNode? head2 = ListNode(
      1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))));
  printList(solution.middleNode(head2)); // Output: [4,5,6]

  // Test case 3
  print('case3');
  ListNode? head3 = ListNode(
      1,
      ListNode(
          2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, ListNode(7)))))));
  printList(solution.middleNode(head3));
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    if (head.next != null) {
      // print("-------------");
    }
    head = head.next;
  }
}
