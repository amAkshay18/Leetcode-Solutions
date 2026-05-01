// func reverse(x int) int {
//     negative := false
//     if x < 0 {
//         negative = true
//         x = -x
//     }

//     reversedNumber := 0
//     for x > 0 {
//         reversedNumber = reversedNumber*10 + x%10
//         x /= 10
//     }

//     if reversedNumber > 2147483647 {
//         return 0
//     }

//     if negative {
//         return -reversedNumber
//     }
//     return reversedNumber
// }