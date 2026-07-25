class Solution {
  List<String> validateCoupons(List<String> code, List<String> businessLine, List<bool> isActive) {
    List<String> order = ["electronics", "grocery", "pharmacy", "restaurant"];
    Map<String, List<String>> validMap = {
      "electronics": [],
      "grocery": [],
      "pharmacy": [],
      "restaurant": [],
    };
    RegExp validCode = RegExp(r'^[a-zA-Z0-9_]+$');
    for (int i = 0; i < code.length; i++) {
      if (code[i].isEmpty || !validCode.hasMatch(code[i])) {
        continue;
      }
      if (!order.contains(businessLine[i])) {
        continue;
      }
      if (!isActive[i]) {
        continue;
      }
      validMap[businessLine[i]]!.add(code[i]);
    }
    List<String> result = [];
    for (String line in order) {
      validMap[line]!.sort();
      result.addAll(validMap[line]!);
    }
    return result;
  }
}