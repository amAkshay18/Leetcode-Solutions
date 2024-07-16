/**
 * Definition for singly-linked list.
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? modifiedList(List<int> nums, ListNode? head) {
    // Convert nums to a Set for O(1) average-time complexity for contains operation
    Set<int> numSet = nums.toSet();

    // Create a dummy node to simplify deletion at the head
    ListNode dummy = ListNode(0);
    dummy.next = head;

    ListNode? current = dummy;

    while (current?.next != null) {
      if (numSet.contains(current!.next!.val)) {
        // Skip the node by bypassing it in the linked list
        current.next = current.next?.next;
      } else {
        // Move to the next node
        current = current.next;
      }
    }

    return dummy.next;
  }
}

// Example usage:
void main() {
  List<int> nums = [1, 2, 3];
  ListNode head =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));

  Solution solution = Solution();
  ListNode? result = solution.modifiedList(nums, head);

  // Print the modified list
  while (result != null) {
    print(result.val);
    result = result.next;
  }
}
