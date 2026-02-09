class Solution {
  Function createHelloWorld() {
    return ([List<dynamic>? args]) {
      return "Hello World";
    };
  }
}

void main() {
  var solution = Solution();
  var f = solution.createHelloWorld();

  print(f());                         // Hello World
  print(f([1, null, {}]));            // Hello World
  print(f([1, 2, 3, 4, 5, 6, 7]));    // Hello World
}

//In JS you can pass unlimited arguments to any function.
// In Dart, the function must declare what it can receive.