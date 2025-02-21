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
class FindElements {
  List<int> elements = [];

  FindElements(TreeNode? root) {
    _helper(root, 0);
  }
  
  void _helper(TreeNode? node, int val) {
    if (node == null) return;
    node.val = val;
    elements.add(val);
    _helper(node.left, val * 2 + 1);
    _helper(node.right, val * 2 + 2);
  }

  bool find(int target) {
    return elements.contains(target);
  }
}

/**
 * Your FindElements object will be instantiated and called as such:
 * FindElements obj = FindElements(root);
 * bool param1 = obj.find(target);
 */