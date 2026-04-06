class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];
    Map<String, String> mobile = {
      '2': 'a,b,c',
      '3': 'd,e,f',
      '4': 'g,h,i',
      '5': 'j,k,l',
      '6': 'm,n,o',
      '7': 'p,q,r,s',
      '8': 't,u,v',
      '9': 'w,x,y,z'
    };
    List<List<String>> all = [];
    for (int i = 0; i < digits.length; i++) {
      String? val = mobile[digits[i]];
      if (val != null) {
        all.add(val.split(','));
      }
    }
    return _getCombinations(all);
  }

  List<String> _getCombinations(List<List<String>> input) {
    List<String> result = [''];
    for (List<String> group in input) {
      List<String> temp = [];
      for (String prefix in result) {
        for (String letter in group) {
          temp.add(prefix + letter);
        }
      }
      result = temp;
    }
    return result;
  }
}