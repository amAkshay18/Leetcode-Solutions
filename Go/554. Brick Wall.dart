// func leastBricks(wall [][]int) int {
// 	m := make(map[int]int)
// 	maxCount := 0
// 	for _, row := range wall {
// 		sum := 0
// 		for i := 0; i < len(row)-1; i++ {
// 			sum += row[i]
// 			m[sum]++

// 			if m[sum] > maxCount {
// 				maxCount = m[sum]
// 			}
// 		}
// 	}
// 	return len(wall) - maxCount
// }