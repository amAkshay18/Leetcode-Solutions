class Solution {
  List<String> splitWordsBySeparator(List<String> words, String separator) {
    final List<String> result = [];
    for (final word in words) {
      final List<String> splitParts = word.split(separator);
      result.addAll(splitParts.where((part) => part.isNotEmpty));
    }
    return result;
  }
}
