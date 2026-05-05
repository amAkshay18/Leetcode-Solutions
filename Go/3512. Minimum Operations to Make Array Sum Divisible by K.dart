// func minOperations(nums []int, k int) int {
//   sum := 0
//   for _, num := range nums {
//     sum += num
//   }
//   count := 0
//   for {
// 	if sum%k == 0 {
// 	  return count
// 	}
// 	sum--
// 	count++
//   }
// }