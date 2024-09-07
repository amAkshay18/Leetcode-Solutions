int chalkReplacer(List<int> chalk, int k) {
  int sum = chalk.reduce((value, element) => value + element);
  while (k > sum) {
    k -= sum;
  }
  for (int i = 0; i < chalk.length; i++) {
    if (chalk[i] > k) {
      return i;
    } else {
      k -= chalk[i];
      continue;
    }
  }
  return 0;
}
