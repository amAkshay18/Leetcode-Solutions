/* =====================================CODE IN JAVA===================================

class Solution {
    public int distanceBetweenBusStops(int[] distance, int start, int destination) {
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
        return Math.min(clockwiseDistance, counterclockwiseDistance);
    }
 }
  
 */

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
