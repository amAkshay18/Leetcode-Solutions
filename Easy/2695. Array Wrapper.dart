class ArrayWrapper {
  final List<int> nums;
  ArrayWrapper(this.nums);

  int get value {
    if (nums.isEmpty) return 0;
    return nums.reduce((a, b) => a + b);
  }

  int operator +(ArrayWrapper other) {
    return value + other.value;
  }

  @override
  String toString() {
    return nums.toString();
  }
}

void main() {
  final obj1 = ArrayWrapper([1, 2]);
  final obj2 = ArrayWrapper([3, 4]);

  print(obj1 + obj2);
  print(obj1.toString());
  print(obj2.toString());
}
