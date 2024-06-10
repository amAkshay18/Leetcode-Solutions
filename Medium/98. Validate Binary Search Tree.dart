class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isValidBST(TreeNode? root) {
    return _isValidBST(root, null, null);
  }

  bool _isValidBST(TreeNode? node, int? lower, int? upper) {
    if (node == null) return true;
    int val = node.val;
    if (lower != null && val <= lower) return false;
    if (upper != null && val >= upper) return false;
    if (!_isValidBST(node.left, lower, val)) return false;
    if (!_isValidBST(node.right, val, upper)) return false;
    return true;
  }
}

void main() {
  TreeNode root1 = TreeNode(2);
  root1.left = TreeNode(1);
  root1.right = TreeNode(3);

  Solution solution = Solution();
  print(solution.isValidBST(root1));

  TreeNode root2 = TreeNode(5);
  root2.left = TreeNode(1);
  root2.right = TreeNode(4);
  root2.right!.left = TreeNode(3);
  root2.right!.right = TreeNode(6);
  Solution solution2 = Solution();
  print(solution2.isValidBST(root2));
}
