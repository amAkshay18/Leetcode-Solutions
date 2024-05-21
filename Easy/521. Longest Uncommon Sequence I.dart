int findUSlength(String a, String b) {
  if (a == b) return -1;
  return a.length > b.length ? a.length : b.length;
}
