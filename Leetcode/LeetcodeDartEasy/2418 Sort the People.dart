List<String> sortedPeople(List<String> names, List<int> heights) {
  List<int> indices = List.generate(names.length, (index) => index);
  indices.sort((a, b) => heights[b].compareTo(heights[a]));
  List<String> sortedNames = [];
  for (int index in indices) {
    sortedNames.add(names[index]);
  }
  return sortedNames;
}
