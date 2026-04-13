// func getMinDistance(nums []int, target int, start int) int {
//   if nums[start] == target {
// 	return 0
//   }
//   distance := len(nums)
//   for i := 0; i < len(nums); i++ {
// 	if nums[i] == target {
//       diff := int(math.Abs(float64(i - start)))
// 	  if distance > diff {
// 	    distance = diff
// 	  }
//     }
//   }
//   return distance
// }