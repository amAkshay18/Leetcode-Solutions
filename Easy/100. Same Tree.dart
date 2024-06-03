class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSameTree(TreeNode? root1, TreeNode? root2) {
    if (root1 == null && root2 == null) return true;
    if (root1 == null || root2 == null) return false;

    final result = root1.val == root2.val &&
        isSameTree(root1.left, root2.left) &&
        isSameTree(root1.right, root2.right);
    return result;
  }
}

void main() {
  TreeNode root1 = TreeNode(1, TreeNode(2), TreeNode(3));
  TreeNode root2 = TreeNode(1, TreeNode(2), TreeNode(3));

  Solution solution = Solution();
  bool result = solution.isSameTree(root1, root2);
  print(result);

  root2.right = TreeNode(4);
  result = solution.isSameTree(root1, root2);

  print(result);
}
