class Solution {
  List<int> frequencySort(List<int> nums) {
    Map<int, int> freq = {};
    nums.forEach((number) => freq[number] = (freq[number] ?? 0) + 1);
    nums.sort((a, b) {
      if (freq[a] == freq[b]) {
        return b.compareTo(a);
      }
      return freq[a]!.compareTo(freq[b]!);
    });
    return nums;
  }
}
