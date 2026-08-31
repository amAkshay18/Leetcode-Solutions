
// Definition for a binary tree node.
import 'dart:collection';
import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  HashMap<TreeNode?, List<int>> map = HashMap();
  int mod = 1000000007;
  int res = 0;

  int maxProduct(TreeNode? root) {
    getSum(root);
    helper(root, 0);
    return (res % mod);
  }

  void helper(TreeNode? node, int pre) {
    if (node == null) return;
    int left = map[node]![0];
    int right = map[node]![1];
    res = max(res, left * (pre + node.val + right));
    res = max(res, right * (pre + node.val + left));
    helper(node.left, pre + node.val + right);
    helper(node.right, pre + node.val + left);
  }

  int getSum(TreeNode? node) {
    if (node == null) return 0;
    int left = getSum(node.left);
    int right = getSum(node.right);
    map[node] = [left, right];
    return left + right + node.val;
  }
}