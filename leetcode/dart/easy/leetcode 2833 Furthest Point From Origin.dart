//Solution1
int furthestDistanceFromOrigin(String moves) {
  int countR = 0;
  int countL = 0;
  int count_ = 0;
  for (int i = 0; i < moves.length; i++) {
    if (moves[i] == 'L') {
      countL++;
    } else if (moves[i] == 'R') {
      countR++;
    } else {
      count_++;
    }
  }
  if (countL > countR) {
    return countL - countR + count_;
  } else if (countR > countL) {
    return countR - countL + count_;
  } else {
    return count_;
  }
}

//Solution2
int furtestDistanceFromOrigin2(String moves) {
  int count = 0;
  for (int i = 0; i < moves.length; i++) {
    if (moves[i] == 'L') {
      count--;
    } else if (moves[i] == 'R') {
      count++;
    }
  }
  return count.abs() +
      moves.split('').where((element) => element == '_').length;
}
