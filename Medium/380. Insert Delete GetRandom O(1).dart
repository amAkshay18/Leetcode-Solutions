import 'dart:math';

class RandomizedSet {

  List<int> result = [];

  RandomizedSet() {
    this.result = [];
  }

  bool insert(int val) {
    if (!result.contains(val)) {
      result.add(val);
      return true;
    }
    return false;
  }

  bool remove(int val) {
    return result.remove(val);
  }

  int getRandom() {
    if (result.isNotEmpty) {
      int index = Random().nextInt(result.length);
      return result[index];
    }
    return -1;
  }
}