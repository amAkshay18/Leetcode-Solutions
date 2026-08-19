// Java Solution

// class Foo {

//     private boolean firstDone = false;
//     private boolean secondDone = false;

//     public Foo() {

//     }

//     public synchronized void first(Runnable printFirst) throws InterruptedException {

//         // Print "first"
//         printFirst.run();

//         // Tell other threads that first() is completed
//         firstDone = true;

//         // Wake up waiting threads
//         notifyAll();
//     }

//     public synchronized void second(Runnable printSecond) throws InterruptedException {

//         // Wait until first() is completed
//         while (!firstDone) {
//             wait();
//         }

//         // Print "second"
//         printSecond.run();

//         // Tell third() that second() is completed
//         secondDone = true;

//         // Wake up waiting threads
//         notifyAll();
//     }

//     public synchronized void third(Runnable printThird) throws InterruptedException {

//         // Wait until second() is completed
//         while (!secondDone) {
//             wait();
//         }

//         // Print "third"
//         printThird.run();
//     }
// }

import 'dart:async';

class Foo {
  final Completer<void> firstDone = Completer<void>();
  final Completer<void> secondDone = Completer<void>();

  Foo();

  Future<void> first(Function printFirst) async {
    printFirst();

    // Tell second() that first() is completed
    firstDone.complete();
  }

  Future<void> second(Function printSecond) async {
    // Wait until first() is completed
    await firstDone.future;

    printSecond();

    // Tell third() that second() is completed
    secondDone.complete();
  }

  Future<void> third(Function printThird) async {
    // Wait until second() is completed
    await secondDone.future;

    printThird();
  }
}