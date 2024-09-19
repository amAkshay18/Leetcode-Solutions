import 'dart:io';

void main() {
  // Initialize the variables a and b
  bool a = true;
  bool b = false;

  // Print initial states of a and b
  print('Initial state:');
  print('a = $a, b = $b');

  // Ask the user which variable to change
  print('Which variable would you like to change? (a or b)');
  String? input = stdin.readLineSync();

  // Update the variable based on user input
  if (input == 'a') {
    a = !a; // Toggle a
    print('a changed, new state:');
    print('a = $a, b = $b');
  } else if (input == 'b') {
    b = !b; // Toggle b
    print('b changed, new state:');
    print('a = $a, b = $b');
  } else {
    print('Invalid input, please enter "a" or "b".');
  }
}
