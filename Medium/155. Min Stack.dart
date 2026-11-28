class MinStack {
  List<int> stack = [];
  List<int> minStack = [];
  MinStack() {}

  void push(int val) {
    stack.add(val);
    if (minStack.isEmpty || val <= minStack.last) {
      minStack.add(val);
      return;
    }
  }

  void pop() {
    if (stack.isEmpty) return;
    int removed = stack.removeLast();
    if (removed == minStack.last) {
      minStack.removeLast();
      return;
    }
  }

  int top() {
    return stack.last;
  }

  int getMin() {
    return minStack.last;
  }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = MinStack();
 * obj.push(val);
 * obj.pop();
 * int param3 = obj.top();
 * int param4 = obj.getMin();
 */
