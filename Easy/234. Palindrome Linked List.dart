class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

bool isPalindrome(ListNode? head) {
  if (head == null) return true;
  List<int> values = [];
  ListNode? current = head;
  while (current != null) {
    values.add(current.val);
    current = current.next;
  }
  int i = 0;
  int j = values.length - 1;
  while (i < j) {
    if (values[i] != values[j]) return false;
    i++;
    j--;
  }
  return true;
}

void main() {
  ListNode node1 = ListNode(1);
  ListNode node2 = ListNode(2);
  ListNode node3 = ListNode(2);
  ListNode node4 = ListNode(1);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  bool result = isPalindrome(node1);
  print(result);

  ListNode node5 = ListNode(1);
  ListNode node6 = ListNode(2);

  node5.next = node6;
  result = isPalindrome(node5);
  print(result);
}
