class MyCirularDeque {
  int maxSize = 0;
  final List<int> deque = [];

  MyCirularDeque(int k) {
    maxSize = k;
  }

  bool insertFront(int value) {
    if (deque.length == maxSize) {
      return false;
    } else {
      deque.insert(0, value);
      return true;
    }
  }

  bool insertLast(int value) {
    if (deque.length == maxSize) {
      return false;
    } else {
      deque.add(value);
      return true;
    }
  }

  bool deleteFront() {
    if (deque.isEmpty) {
      return false;
    } else {
      deque.removeAt(0);
      return true;
    }
  }

  bool deleteLast() {
    if (deque.isEmpty) {
      return false;
    } else {
      deque.removeLast();
      return true;
    }
  }

  int getFront() {
    if (deque.isEmpty) {
      return -1;
    } else {
      return deque[0];
    }
  }

  int getRear() {
    if (deque.isEmpty) {
      return -1;
    } else {
      return deque[deque.length - 1];
    }
  }

  bool isEmpty() {
    return deque.isEmpty;
  }

  bool isFull() {
    return deque.length == maxSize;
  }
}
