class MyQueue {
  List input = [];
  MyQueue() {}
  void push(int x) {
    input.add(x);
  }

  int pop() {
    return input.removeAt(0);
  }

  int peek() {
    return input.first;
  }

  bool empty() {
    return input.isEmpty;
  }
}
