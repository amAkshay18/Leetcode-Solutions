class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? insertGreatestCommonDivisors(ListNode? head) {
    if (head == null || head.next == null) return head;
    ListNode? curr = head;
    while (curr != null && curr.next != null) {
      int gcdVal = gcd(curr.val, curr.next!.val);
      ListNode gcdNode = ListNode(gcdVal);
      gcdNode.next = curr.next;
      curr.next = gcdNode;
      curr = gcdNode.next;
    }
    return head;
  }

  int gcd(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}
