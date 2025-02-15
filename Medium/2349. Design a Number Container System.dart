import 'dart:collection';
class NumberContainers {
    final idx = Map<int,int>(); // index: number
    final nbr = Map<int, SplayTreeSet<int>>(); // number: index set
  NumberContainers() {}
  
  void change(int index, int number) {
    final prevNum = idx[index] ?? 0;
    if (prevNum > 0){
        nbr[prevNum]!.remove(index);
    }
    idx[index] = number;
    (nbr[number] ??= SplayTreeSet<int>()).add(index);
  }
  
  int find(int number) {
    return nbr[number]?.firstOrNull ?? -1;
  }
}

/**
 * Your NumberContainers object will be instantiated and called as such:
 * NumberContainers obj = NumberContainers();
 * obj.change(index,number);
 * int param2 = obj.find(number);
 */