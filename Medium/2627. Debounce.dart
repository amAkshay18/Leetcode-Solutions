import 'dart:async';

typedef void DebouncedFunction();

class Debouncer {
  final int milliseconds;
  DebouncedFunction? _function;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void debounce(DebouncedFunction function) {
    _function = function;
    _timer?.cancel(); // Cancel the previous timer if it exists

    _timer = Timer(Duration(milliseconds: milliseconds), () {
      _function!(); // Execute the debounced function after the delay
    });
  }

  void cancel() {
    _timer?.cancel();
  }
}

void main() {
  // Example usage:
  var debouncer = Debouncer(milliseconds: 50);

  // Simulate function calls at various times
  simulateFunctionCall(debouncer, 30); // Should be cancelled
  simulateFunctionCall(debouncer, 60); // Should be cancelled
  simulateFunctionCall(debouncer, 100); // Should execute after debounce time

  // Another example with a different debounce time
  debouncer = Debouncer(milliseconds: 35);
  simulateFunctionCall(debouncer, 30); // Should be cancelled
  simulateFunctionCall(debouncer, 60); // Should execute after debounce time
  simulateFunctionCall(debouncer, 100); // Should execute after debounce time
}

// Simulate calling a function at a specific time
void simulateFunctionCall(Debouncer debouncer, int time) {
  print('Calling function at $time ms');
  debouncer.debounce(() {
    print('Debounced function executed at ${DateTime.now()}');
  });
}
