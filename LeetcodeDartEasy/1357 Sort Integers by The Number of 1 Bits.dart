List<int> sortByBits(List<int> arr) {
  arr.map((int number) {
    return number.toRadixString(2);
  }).toList();
  int compareBySetBits(int a, int b) {
    int countA = a.toRadixString(2).replaceAll('0', '').length;
    int countB = b.toRadixString(2).replaceAll('0', '').length;
    if (countA != countB) {
      return countA.compareTo(countB);
    } else {
      return a.compareTo(b);
    }
  }

  arr.sort(compareBySetBits);
  return arr;
}

void main() {
  List<int> arr = [5, 3, 6, 7];
  List<int> sortedArr = sortByBits(arr);
  print(sortedArr);
}
