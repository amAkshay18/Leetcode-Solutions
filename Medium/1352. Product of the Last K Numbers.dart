class ProductOfNumber{
  List<int> list = [];
  ProductOfNumbers() {}
  void add(int num) {
    list.add(num);
  }
  int getProduct(int k) {
    int product = 1;
    for (int i = list.length - 1; i >= list.length - k - 1; i--) {
      product *= list[i];
    }
    return product;
  }
}
