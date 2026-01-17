//  Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    bool hasSum = false;
    void pathSum(TreeNode? root, int sum) {
      if (root == null) return;
      sum += int.parse(root.val.toString());
      if (root.left == null && root.right == null && sum == targetSum) {
        hasSum = true;
        return;
      } else {
        pathSum(root.left, sum);
        pathSum(root.right, sum);
      }
    }

    pathSum(root, 0);
    return hasSum;
  }
}
