// Method1
int numJewelsInStones1(String jewels, String stones) {
  return stones.split('').where(stones.contains).length;
}

// Method2
int numJewelsInStones2(String jewels, String stones) {
  int count = 0;
  for (int i = 0; i < jewels.length; i++) {
    for (int j = 0; j < stones.length; j++) {
      if (jewels[i] == stones[i]) {
        count++;
      }
    }
  }
  return count;
}

// Method3
int numJewelsInStones3(String jewels, String stones) {
  int count = 0;
  for (int i = 0; i < stones.length; i++) {
    if (jewels.contains(stones[i])) {
      count++;
    }
  }
  return count;
}
