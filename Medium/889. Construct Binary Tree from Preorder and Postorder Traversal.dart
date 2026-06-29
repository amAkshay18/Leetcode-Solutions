  // Definition for a binary tree node.F
  class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
  }
 
class Solution {
  TreeNode? constructFromPrePost(List<int> preorder, List<int> postorder) {
    if (preorder.isEmpty || postorder.isEmpty) {
      return null;
    }
    final root = TreeNode(preorder.first);
    if (preorder.length == 1) {
      return root;
    }
    final index = postorder.indexOf(preorder[1]);
    root.left = constructFromPrePost(preorder.sublist(1, index + 2), postorder.sublist(0, index + 1));
    root.right = constructFromPrePost(preorder.sublist(index + 2), postorder.sublist(index + 1));
    return root;
  }
}