// SOLUTION IN JAVASCRIPT

/**
 * @return {Generator<number>}
 */
// var fibGenerator = function*() {
//     let a = 0, b = 1;
//     while (true) {
//         yield a;
//         [a, b] = [b, a + b];
//     }
// };

/**
 * const gen = fibGenerator();
 * gen.next().value; // 0
 * gen.next().value; // 1
 */

// SOLUTION IN DART

/**
 * @return A Generator<int>
 */
Iterable<int> fibGenerator() sync* {
  int a = 0;
  int b = 1;

  while (true) {
    yield a;

    int next = a + b;
    a = b;
    b = next;
  }
}

void main() {
  final generator = fibGenerator().iterator;

  generator.moveNext();
  print(generator.current); // 0

  generator.moveNext();
  print(generator.current); // 1

  generator.moveNext();
  print(generator.current); // 1

  generator.moveNext();
  print(generator.current); // 2

  generator.moveNext();
  print(generator.current); // 3
}