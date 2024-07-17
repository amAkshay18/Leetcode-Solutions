class Solution {
  String destCity(List<List<String>> paths) {
    if (paths.length == 1) return paths[0][1];
    for (var i = 0; i < paths.length; i++) {
      String destination = paths[i][1];
      if (paths.where((value) => value[0] == destination).toList().length ==
          0) {
        return destination;
      } else {
        continue;
      }
    }
    return "";
  }
}
