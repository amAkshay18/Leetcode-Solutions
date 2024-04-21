String defangIPaddr(String address) {
  List<String> result = [];
  for (int i = 0; i < address.length; i++) {
    if (address[i] != '.') {
      result.add(address[i]);
    } else {
      result.addAll(["[", address[i], "]"]);
    }
  }
  return result.join();
}
