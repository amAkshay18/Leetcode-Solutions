class Solution {
  int numUniqueEmails(List<String> emails) {
    Set<String> uniqueEmails = {};
    for (String email in emails) {
      List<String> parts = email.split('@');
      String local = parts[0];
      String domain = parts[1];
      int plusIndex = local.indexOf('+');
      if (plusIndex != -1) {
        local = local.substring(0, plusIndex);
      }
      local = local.replaceAll('.', '');
      uniqueEmails.add('$local@$domain');
    }
    return uniqueEmails.length;
  }
}
