func canBeEqual(s1 string, s2 string) bool {
  char1 := []rune(s1)
  for i := 0; i < len(char1)-2; i++ {
	if char1[i] != rune(s2[i]) {
	  temp := char1[i]
	  char1[i] = char1[i+2]
      char1[i+2] = temp
	}
  }
  return string(char1) == s2
}