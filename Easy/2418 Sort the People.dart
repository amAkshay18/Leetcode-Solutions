List<String> sortedPeople1(List<String> names, List<int> heights) {
  List<int> indices = List.generate(names.length, (index) => index);
  indices.sort((a, b) => heights[b].compareTo(heights[a]));
  List<String> sortedNames = [];
  for (int index in indices) {
    sortedNames.add(names[index]);
  }
  return sortedNames;
}

List<String> sortedPeople2(List<String> names, List<int> heights) {
  List<String> result = List.from(names); // Create a copy of the names array
  result.sort((a, b) => heights[names.indexOf(b)] - heights[names.indexOf(a)]);
  return result;
}

List<String> sortedPeople3(List<String> names, List<int> heights) {
  List<MapEntry<String, int>> pairs =
      List.generate(names.length, (i) => MapEntry(names[i], heights[i]));
  pairs.sort((a, b) => b.value - a.value);
  return pairs.map((entry) => entry.key).toList();
}

List<String> sortedPeople4(List<String> names, List<int> heights) {
  List<int> indices = List.generate(names.length, (i) => i);
  indices.sort((a, b) => heights[b] - heights[a]);
  return indices.map((i) => names[i]).toList();
}

List<String> sortedPeople5(List<String> names, List<int> heights) {
  // Create a copy of the names array
  List<String> result = List.from(names);

  // Custom sorting function based on heights
  for (int i = 0; i < result.length - 1; i++) {
    for (int j = i + 1; j < result.length; j++) {
      if (heights[j] > heights[i]) {
        // Swap names and heights
        String tempName = result[i];
        result[i] = result[j];
        result[j] = tempName;
      }
    }
  }

  return result;
}

void main() {
  List<String> names = ["Mary", "John", "Emma"];
  List<int> heights = [180, 165, 170];
  List<String> sortedNames = sortedPeople1(names, heights);
  print(sortedNames); // Output: ["Mary", "Emma", "John"]
}
