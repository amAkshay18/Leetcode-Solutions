class KthLargest {
  var _k = 0;
  var _nums = [];
  KthLargest(int k, List<int> nums) {
    _k = k;
    nums.sort((a, b) => b.compareTo(a));
    _nums = nums.take(_k).toList();
  }
  int add(int val) {
    var flag = _nums.length < _k;
    if (flag || val > _nums.last) {
      if (flag) {
        _nums
          ..add(val)
          ..sort((a, b) => b.compareTo(a));
      } else {
        _nums
          ..insert(_nums.indexWhere((e) => val > e), val)
          ..removeLast();
      }
    }
    return _nums.last;
  }
}
