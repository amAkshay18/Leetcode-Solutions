import '../Easy/100. Same Tree.dart';

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  TreeNode? recoverFromPreorder(String t) {
    List<TreeNode?> stack = [];
    int index = 0;
    while (index < t.length) {
      int depth = 0;
      for(;t[index] == '-';depth++,index++);
      int v = 0;
      for(;index < t.length && t[index] != '-';v = v * 10 + int.parse(t[index++]));
      TreeNode node = TreeNode(v);
      while (stack.length > depth) stack.removeLast();
      if (stack.isNotEmpty) 
        if (stack.last!.left == null) stack.last!.left = node;
        else stack.last!.right = node;
      stack.add(node);
    }
    return stack.isNotEmpty ? stack.first : null;
  }
}