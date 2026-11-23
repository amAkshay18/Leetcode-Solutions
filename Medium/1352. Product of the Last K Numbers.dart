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

// Solution 2
class ProductOfNumbers {
  List<int> list = [];
  ProductOfNumbers() {}
  
  void add(int num) {
    list.add(num);
  }
  
  int getProduct(int k) {
    int product = 1;
    int n = list.length;
    for (int i = n - 1; i > n - k - 1; i--) {
      product *= list[i];
    }
    return product;
  }
}

/**
 * Your ProductOfNumbers object will be instantiated and called as such:
 * ProductOfNumbers obj = ProductOfNumbers();
 * obj.add(num);
 * int param2 = obj.getProduct(k);
 */