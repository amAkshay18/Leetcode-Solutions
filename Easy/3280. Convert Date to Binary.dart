class Solution {
  String convertDateToBinary(String date) {
    List<String> dateParts = date.split('-');
    for (int index = 0; index < dateParts.length; index++) {
      int numericValue = int.parse(dateParts[index]);
      String binaryValue = numericValue.toRadixString(2);
      dateParts[index] = binaryValue;
    }
    return dateParts.join('-');
  }
}
