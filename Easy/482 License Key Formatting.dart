String licenseKeyFormating(String s, int k) {
  s = s.replaceAll('-', '').toUpperCase();
  List<String> result = [];
  int firstGroupLength = s.length % k;
  if (firstGroupLength > 0) result.add(s.substring(0, firstGroupLength));
  for (int i = firstGroupLength; i < s.length; i += k) {
    result.add(s.substring(i, i + k));
  }
  return result.join('-');
}
