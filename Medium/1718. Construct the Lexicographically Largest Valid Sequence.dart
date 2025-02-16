  List<int> constructDistancedSequence(int n) {
    List<int> result = List.filled(2 * n - 1, 0);
    List<bool> used = List.filled(n + 1, false);
    
    bool backtrack(int index) {
        if (index == result.length) return true;
        if (result[index] != 0) return backtrack(index + 1);
        
        for (int num = n; num >= 1; num--) {
            if (used[num]) continue;
            if (num == 1) {
                result[index] = 1;
                used[num] = true;
                if (backtrack(index + 1)) return true;
                result[index] = 0;
                used[num] = false;
            } else {
                int secondIndex = index + num;
                if (secondIndex < result.length && result[secondIndex] == 0) {
                    result[index] = result[secondIndex] = num;
                    used[num] = true;
                    if (backtrack(index + 1)) return true;
                    result[index] = result[secondIndex] = 0;
                    used[num] = false;
                }
            }
        }
        return false;
    }
    backtrack(0);
    return result;    
  }