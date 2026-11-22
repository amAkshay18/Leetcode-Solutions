class MyStack {
  List<int> stack = [];
  MyStack() {}

  void push(int x) {
    stack.add(x);
  }

  int pop() {
    return stack.removeLast();
  }

  int top() {
    return stack.last;
  }

  bool empty() {
    return stack.isEmpty;
  }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = MyStack();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.top();
 * bool param4 = obj.empty();
 */

// Java Solution

// class MyStack {
//     private Queue<Integer>q;
//     public MyStack() {
//         q=new LinkedList<>();
//     }
    
//     public void push(int x) {
//         q.add(x);
//         for(int i=0;i<q.size()-1;i++){
//             q.add(q.poll());
//         }
//     }
    
//     public int pop() {
//         return q.poll();
//     }
    
//     public int top() {
//         return q.peek();
//     }
    
//     public boolean empty() {
//         return q.isEmpty();
//     }
// }

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = new MyStack();
 * obj.push(x);
 * int param_2 = obj.pop();
 * int param_3 = obj.top();
 * boolean param_4 = obj.empty();
 */
