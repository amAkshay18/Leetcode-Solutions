bool checkRecord(String s) {
  int countA = 0;
  int countL = 0;
  for (String i in s.split('')) {
    if (i == "A") countA++;
    if (i == "L") countL++;
    if (i != "L") countL = 0;
    if (countL >= 3 || countA >= 2) return false;
  }
  return true;
}
