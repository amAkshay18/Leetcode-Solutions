// 1184. Distance Between Bus Stops
// A bus has n stops numbered from 0 to n - 1 that form a circle. We know the distance between all pairs of neighboring stops where distance[i] is the distance between the stops number i and (i + 1) % n.

// The bus goes along both directions i.e. clockwise and counterclockwise.

// Return the shortest distance between the given start and destination stops.
// Input: distance = [1,2,3,4], start = 0, destination = 1
// Output: 1
// Explanation: Distance between 0 and 1 is 1 or 9, minimum is 1.
// Input: distance = [1,2,3,4], start = 0, destination = 2
// Output: 3
// Explanation: Distance between 0 and 2 is 3 or 7, minimum is 3.

// =====================================CODE IN JAVA===================================
// class Solution {
//     public int distanceBetweenBusStops(int[] distance, int start, int destination) {
//         int totalDistance = 0;
//         int clockwiseDistance = 0;
//         int n = distance.length;
//         for (int i = 0; i < n; i++) {
//             totalDistance += distance[i];
//         }
//         if (start <= destination) {
//             for (int i = start; i < destination; i++) {
//                 clockwiseDistance += distance[i];
//             }
//         } else {
//             for (int i = start; i < n; i++) {
//                 clockwiseDistance += distance[i];
//             }
//             for (int i = 0; i < destination; i++) {
//                 clockwiseDistance += distance[i];
//             }
//         }
//         int counterclockwiseDistance = totalDistance - clockwiseDistance;
//         return Math.min(clockwiseDistance, counterclockwiseDistance);
//     }
// }

class Solution {
  int distanceBetweenBusStops(List<int> distance, int start, int destination) {
    int totalDistance = 0;
    int clockwiseDistance = 0;
    int n = distance.length;

    for (int i = 0; i < n; i++) {
      totalDistance += distance[i];
    }

    if (start <= destination) {
      for (int i = start; i < destination; i++) {
        clockwiseDistance += distance[i];
      }
    } else {
      for (int i = start; i < n; i++) {
        clockwiseDistance += distance[i];
      }

      for (int i = 0; i < destination; i++) {
        clockwiseDistance += distance[i];
      }
    }

    int counterclockwiseDistance = totalDistance - clockwiseDistance;
    return (clockwiseDistance < counterclockwiseDistance)
        ? clockwiseDistance
        : counterclockwiseDistance;
  }
}

void main() {
  Solution solution = Solution();
  List<int> distance = [1, 2, 3, 4, 5];
  int start = 0;
  int destination = 3;

  int result = solution.distanceBetweenBusStops(distance, start, destination);
  print("Minimum distance between bus stops: $result");
}
