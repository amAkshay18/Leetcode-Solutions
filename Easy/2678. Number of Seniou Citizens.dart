int countSeniors(List<String> details) {
  int count = 0;
  for (int i = 0; i < details.length; i++) {
    String ageString = '';
    ageString += details[i].substring(11, 13);
    int age = int.parse(ageString);
    if (age > 60) count++;
  }
  return count;
}
