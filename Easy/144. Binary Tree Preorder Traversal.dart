//  Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> preorderTraversal(TreeNode? root) {
    List<int> list = [];
    preOrderHelper(root, list);
    return list;
  }

  preOrderHelper(TreeNode? root, List<int> list) {
    if (root != null) {
      list.add(root.val!);
      preOrderHelper(root.left, list);
      preOrderHelper(root.right, list);
    }
  }
}
