//  Definition for a binary tree node.
 class TreeNode {
   int val;
   TreeNode? left;
   TreeNode? right;
   TreeNode([this.val = 0, this.left, this.right]);
 }
 
class Solution {
  bool isSymmetric(TreeNode? root) {
    if(root == null) {
      return true;
    }
    return isMirror(root.left,root.right);
  }
  bool isMirror(TreeNode?left, TreeNode?right) {
    if( left == null && right == null) return true;
    if(left == null || right == null) return false;
    if(left.val != right.val) return false;
    return isMirror(left.left, right.right) && isMirror(left.right, right.left);
  }
}