// func check(nums []int) bool {
// 	count := 0
// 	n := len(nums)
// 	for i := 0; i < n; i++ {
// 		if nums[i] > nums[(i+1) % n] {
// 			count++
// 		}
// 	}
// 	return count <= 1
// }