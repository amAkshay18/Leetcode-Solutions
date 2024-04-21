class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null; // This will be the previous node to the current one
  ListNode? current = head; // Start with the head of the list
  while (current != null) {
    ListNode? nextNode = current.next; // Save the next node before reversing
    current.next = prev; // Reverse the pointer
    prev = current; // Move prev to current node
    current = nextNode; // Move current to the next node
  }
  return prev; // At the end, prev will be the new head of the reversed list
}

void main() {
  // Create the linked list
  ListNode? head1 = ListNode(1);
  head1.next = ListNode(2);
  head1.next!.next = ListNode(3);
  head1.next!.next!.next = ListNode(4);
  head1.next!.next!.next!.next = ListNode(5);

  ListNode? head2 = ListNode(1);
  head2.next = ListNode(2);

  ListNode? head3 = null;

  // Print the original linked lists
  print("Original Linked List 1:");
  printLinkedList(head1);
  print("\nOriginal Linked List 2:");
  printLinkedList(head2);
  print("\nOriginal Linked List 3:");
  printLinkedList(head3);

  // Reverse the linked lists
  ListNode? reversedHead1 = reverseList(head1);
  ListNode? reversedHead2 = reverseList(head2);
  ListNode? reversedHead3 = reverseList(head3);

  // Print the reversed linked lists
  print("\nReversed Linked List 1:");
  printLinkedList(reversedHead1); // Output: 5 -> 4 -> 3 -> 2 -> 1 -> null
  print("\nReversed Linked List 2:");
  printLinkedList(reversedHead2); // Output: 2 -> 1 -> null
  print("\nReversed Linked List 3:");
  printLinkedList(reversedHead3); // Output: null
}

// Function to print the linked list
void printLinkedList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    // Print the value of the current node
    print('${current.val} -> ');
    // Move to the next node
    current = current.next;
  }
  // Print null to indicate the end of the list
  print('null');
}
