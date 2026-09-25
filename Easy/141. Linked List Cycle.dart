/** SOLUTION IN SWIFT SUBMITTED TO LEETCODE
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }


class Solution {
  func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    // Traverse the list with two pointers
    while fast != nil && fast?.next != nil {
      slow = slow?.next        // Move slow by one step
      fast = fast?.next?.next  // Move fast by two steps
      // If slow and fast meet, a cycle exists
      if slow === fast {
        return true
      }
    }
    // If we reach the end, no cycle exists
    return false
  }
}
 */

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val) {
    next = null;
  }
}

class Solution {
  bool hasCycle(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;

    // Traverse the list with two pointers
    while (fast != null && fast.next != null) {
      slow = slow?.next; // Move slow by one step
      fast = fast.next?.next; // Move fast by two steps

      // If slow and fast meet, a cycle exists
      if (identical(slow, fast)) {
        return true;
      }
    }

    // If we reach the end, no cycle exists
    return false;
  }
}
