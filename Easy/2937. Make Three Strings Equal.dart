int findMinimumOperations(String s1, String s2, String s3) {
  int i = 0;
  while (i < s1.length &&
      i < s2.length &&
      i < s3.length &&
      s1[i] == s2[i] &&
      s2[i] == s3[i]) {
    i++;
  }
  if (i == 0) return -1;
  return (s1.length - i).abs() + (s2.length - i).abs() + (s3.length - i).abs();
}
