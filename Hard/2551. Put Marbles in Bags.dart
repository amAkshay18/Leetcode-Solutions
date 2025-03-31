int putMarbles(List<int> weights, int k) {
  int totalWeights = weights.length;
  List<int> pairs = [];
  for (var i = 0; i < totalWeights - 1; i++) {
    pairs.add(weights[i] + weights[i + 1]);
  }
  pairs.sort();
  int minSum = 0;
  int maxSum = 0;
  for (var i = 0; i < k - 1; i++) {
    minSum += pairs[i];
    maxSum += pairs[pairs.length - 1 - i];
  }
  return maxSum - minSum;
}
