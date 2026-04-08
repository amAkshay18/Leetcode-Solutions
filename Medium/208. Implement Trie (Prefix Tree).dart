class Trie {
  TrieNode root = TrieNode();
  String endSymbol = '*';
  Trie();
  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      if (!node.map.containsKey(word[i])) {
        node.map[word[i]] = TrieNode();
      }
      node = node.map[word[i]]!;
    }
    node.map[endSymbol] = TrieNode();
  }
  bool search(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      if (!node.map.containsKey(word[i])) {
        return false;
      }
      node = node.map[word[i]]!;
    }
    return node.map.containsKey(endSymbol);
  }
  bool startsWith(String prefix) {
    TrieNode node = root;
    for (int i = 0; i < prefix.length; i++) {
      if (!node.map.containsKey(prefix[i])) {
        return false;
      }
      node = node.map[prefix[i]]!;
    }
    return true;
  }
}
class TrieNode {
  Map<String, TrieNode> map = {};
}

/**
 * Your Trie object will be instantiated and called as such:
 * Trie obj = Trie();
 * obj.insert(word);
 * bool param2 = obj.search(word);
 * bool param3 = obj.startsWith(prefix);
 */
