// func balancedStringSplit(s string) int {
//     balancedCount := 0
//     currentBalance := 0
//     for i := 0; i < len(s); i++ {
//         if s[i] == 'L' {
//             currentBalance++
//         } else if s[i] == 'R' {
//             currentBalance--
//         }
//         if currentBalance == 0 {
//             balancedCount++
//         }
//     }
//     return balancedCount
// }