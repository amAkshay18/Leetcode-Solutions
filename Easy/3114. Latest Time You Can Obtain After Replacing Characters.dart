String findLatestTime(String s) {
  List<String> splitTime = s.split('');
  if (splitTime[0] == '?') {
    if (splitTime[1] != '0' && splitTime[1] != '1' && splitTime[1] != '?') {
      splitTime[0] = '0';
    } else {
      splitTime[0] = '1';
    }
  }
  if (splitTime[1] == '?') {
    if (splitTime[0] == '1') {
      splitTime[1] = '1';
    } else {
      splitTime[1] = '9';
    }
  }
  if (splitTime[3] == '?') {
    splitTime[3] = '5';
  }
  if (splitTime[4] == '?') {
    splitTime[4] = '9';
  }
  return splitTime.join('');
}
