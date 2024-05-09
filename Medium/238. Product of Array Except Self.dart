List<int> productExceptSelf(List<int> nums) {
  int length = nums.length;
  List<int> result = List<int>.filled(length, 0);
  int prefixProduct = 1;
  for (int i = 0; i < length; i++) {
    result[i] *= prefixProduct;
    prefixProduct *= nums[i];
  }
  int suffixProduct = 1;
  for (int i = length - 1; i >= 0; i--) {
    result[i] *= suffixProduct;
    suffixProduct *= nums[i];
  }
  return result;
}
