String toHex(int num) {
  if (num == 0) return '0';
  final List<String> hexChars = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f'
  ];
  if (num < 0) {
    num = 0xFFFFFFFF + num + 1;
  }
  String result = '';
  while (num > 0) {
    int remainder = num % 16;
    result = hexChars[remainder] + result;
    num ~/= 16;
  }
  return result;
}
