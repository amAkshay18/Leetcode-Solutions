// import (
// 	"strconv"
// )

// func isPalindrome(x int) bool {
// 	if x < 0 {
// 		return false
// 	}

// 	str := strconv.Itoa(x)

// 	// reverse string
// 	runes := []rune(str)
// 	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
// 		runes[i], runes[j] = runes[j], runes[i]
// 	}

// 	reversed := string(runes)

// 	return str == reversed
// }