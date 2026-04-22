class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    var nums = BigInt.parse(num.join()) + BigInt.from(k);
    List<int> result = nums.toString().split('').map(int.parse).toList();
    return result;
  }
}