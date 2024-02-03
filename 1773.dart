int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
  int count = 0;
  for (int i = 0; i < items.length; i++) {
    if (ruleKey == 'type' && ruleValue == items[i][0]) {
      count++;
    } else if (ruleKey == 'color' && ruleValue == items[i][1]) {
      count++;
    } else if (ruleKey == 'name' && ruleValue == items[i][2]) {
      count++;
    }
  }
  return count;
}
