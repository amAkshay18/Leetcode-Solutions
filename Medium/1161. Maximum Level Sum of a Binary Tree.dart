import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxLevelSum(TreeNode? root) {
    if (root == null) return 0;
    Queue<TreeNode> queue = Queue();
    queue.add(root);
    int level = 1;
    int answerLevel = 1;
    int maxSum = root.val;
    while (queue.isNotEmpty) {
      int size = queue.length;
      int levelSum = 0;
      // Process all nodes of the current level
      for (int i = 0; i < size; i++) {
        TreeNode current = queue.removeFirst();
        levelSum += current.val;
        if (current.left != null) {
          queue.add(current.left!);
        }
        if (current.right != null) {
          queue.add(current.right!);
        }
      }
      // Update max sum and level
      if (levelSum > maxSum) {
        maxSum = levelSum;
        answerLevel = level;
      }
      level++;
    }
    return answerLevel;
  }
}
