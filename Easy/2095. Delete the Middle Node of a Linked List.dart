class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteMiddle(ListNode? head) {
    if (head == null || head.next == null) return null;
    int length = 0;
    ListNode? current = head;
    while (current != null) {
      length++;
      current = current.next;
    }
    int middleIndex = length ~/ 2;
    if (middleIndex == 0) return head.next;
    current = head;
    for (int i = 0; i < middleIndex - 1; i++) {
      current = current?.next;
    }
    if (current != null && current.next != null) {
      current.next = current.next?.next;
    }
    return head;
  }
}

void main() {
  ListNode? head = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));

  print("Original list: ");
  ListNode? current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }

  var solution = Solution();
  head = solution.deleteMiddle(head);

  print("List after deleting middle node: ");
  current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}
