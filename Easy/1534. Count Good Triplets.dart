// JAVA SOLUTION

// class Solution {
//   public int countGoodTriplets(int[] arr, int a, int b, int c) {
//     int goodTriplets = 0;
//     int length = arr.length;
//     for (int i = 0; i < length; i++) {
//       for (int j = i + 1; j < length; j++) {
//         if (Math.abs(arr[i] - arr[j]) <= a) {
//           for (int k = j + 1; k < length; k++) {
//             if (Math.abs(arr[j] - arr[k]) <= b && Math.abs(arr[i] - arr[k]) <= c) {
//               goodTriplets++;
//             }
//           }
//         }
//       }
//     }
//     return goodTriplets;
//   }
// }

class Solution {
  int countGoodTriplets(List<int> arr, int a, int b, int c) {
    int goodTriplets = 0;
    int length = arr.length;

    for (int i = 0; i < length; i++) {
      for (int j = i + 1; j < length; j++) {
        if ((arr[i] - arr[j]).abs() <= a) {
          for (int k = j + 1; k < length; k++) {
            if ((arr[j] - arr[k]).abs() <= b && (arr[i] - arr[k]).abs() <= c) {
              goodTriplets++;
            }
          }
        }
      }
    }

    return goodTriplets;
  }
}
