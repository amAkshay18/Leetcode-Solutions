int minimumSum(int num) {
  var list = num.toString().split('');
  list.sort();
  return int.parse(list[0] + list[2]) + int.parse(list[1] + list[3]);
}
