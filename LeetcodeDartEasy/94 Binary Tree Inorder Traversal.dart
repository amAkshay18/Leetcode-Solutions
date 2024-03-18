//  * Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

List<int> inorderTraversal(TreeNode? root) {
  if (root == null) return [];
  List<int> result = [];
  result.addAll(inorderTraversal(root.left));
  result.add(root.val);
  result.addAll(inorderTraversal(root.right));
  return result;
}
