class MyHashMap {
  
  late Map<int, int?> map;
  MyHashMap() {
    map = {};
  }
  
  void put(int key, int value) {
    map[key] = value;
  }
  
  int get(int key) {
    if (map[key] == null) return -1;
    return map[key]!;
  }
  
  void remove(int key) {
    map[key] = null;
  }
}