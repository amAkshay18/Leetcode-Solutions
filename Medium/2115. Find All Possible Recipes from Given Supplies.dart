List<String> findAllRecipes(List<String> recipes,
    List<List<String>> ingredients, List<String> supplies) {
  Map<String, bool> canCook = {for (var s in supplies) s: true};
  Map<String, int> recipeIndex = {
    for (int i = 0; i < recipes.length; i++) recipes[i]: i
  };
  bool dfs(String r) {
    if (canCook.containsKey(r)) {
      return canCook[r]!;
    }
    if (!recipeIndex.containsKey(r)) {
      return false;
    }
    canCook[r] = false;
    for (String nei in ingredients[recipeIndex[r]!]) {
      if (!dfs(nei)) {
        return false;
      }
    }
    canCook[r] = true;
    return canCook[r]!;
  }

  return recipes.where((r) => dfs(r)).toList();
}
