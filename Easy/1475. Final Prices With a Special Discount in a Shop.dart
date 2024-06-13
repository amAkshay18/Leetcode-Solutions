List<int> finalPrices(List<int> prices) {
  List<int> store = List.from(prices);
  for (int i = 0; i < store.length; i++) {
    for (int j = i + 1; j < store.length; j++) {
      if (store[j] <= store[i]) {
        store[i] -= store[j];
        break;
      }
    }
  }
  return store;
}
