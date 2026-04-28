// func minOperations(grid [][]int, x int) int {
//     var values []int
//     for _, row := range grid {
//         values = append(values, row...)
//     }
//     sort.Ints(values)
//     median := values[len(values)/2]
//     operations := 0
//     for _, val := range values {
//         diff := val - median
//         if diff < 0 {
//             diff = -diff
//         }
//         if diff%x != 0 {
//             return -1
//         }
//         operations += diff / x
//     }
//     return operations
// }