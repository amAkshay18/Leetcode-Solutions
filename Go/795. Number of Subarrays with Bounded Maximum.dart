// func numSubarrayBoundedMax(nums []int, left int, right int) int {
// 	l, r := -1, -1
// 	count := 0
// 	for i := 0; i < len(nums); i++ {
// 		if nums[i] > right {
// 			l = i
// 		}
// 		if nums[i] >= left {
// 			r = i
// 		}
// 		count += (r - l)
// 	}
// 	return count
// }