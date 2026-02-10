import 'dart:async';

Function cancellable(Function fn, List args, int t) {
  // Call immediately
  Function.apply(fn, args);

  // Call repeatedly every t milliseconds
  Timer timer = Timer.periodic(
    Duration(milliseconds: t),
    (_) => Function.apply(fn, args),
  );

  // Cancel function
  void cancelFn() {
    timer.cancel();
  }

  return cancelFn;
}
