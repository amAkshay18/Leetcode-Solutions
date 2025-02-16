import '../Medium/98. Validate Binary Search Tree.dart';

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
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) return null;
    if (root.val == val) return root;
    return searchBST(root.left, val) ?? searchBST(root.right, val);
  }
}