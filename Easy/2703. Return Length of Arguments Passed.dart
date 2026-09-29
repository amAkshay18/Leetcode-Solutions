// JAVASCRIPT SOLUTION SUBMITTED

/**
 * @param {...(null|boolean|number|string|Array|Object)} args
 * @return {number}
 */
// var argumentsLength = function(...args) {
//     return args.length;
// };

/**
 * argumentsLength(1, 2, 3); // 3
 */

// DART SOLUTION

int argumentsLength(List<dynamic> args) {
  return args.length;
}

void main() {
  print(argumentsLength([1, 2, 3])); // 3
}