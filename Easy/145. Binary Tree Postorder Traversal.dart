//  * Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> post = [];
  List<int> postorderTraversal(TreeNode? root) {
    if (root != null) {
      postorderTraversal(root.left);
      postorderTraversal(root.right);
      post.add(root.val);
    }
    return post;
  }
}
