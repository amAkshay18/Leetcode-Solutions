
  import 'dart:math';

int maximumValue(List<String> strs) {
    int maximum = 0;
    strs.forEach((item) {
      int? intValue = int.tryParse(item);
      maximum = max(intValue ?? item.length, maximum);
    });
    return maximum;
  }
