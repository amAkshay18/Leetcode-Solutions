class Solution {
  List<int> sortArray(List<int> nums) {
    mergeSort(nums, 0, nums.length - 1);
    return nums;
  }

  void mergeSort(List<int> arr, int left, int right) {
    if (left >= right) return;
    int mid = left + (right - left) ~/ 2;
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);
    merge(arr, left, mid, right);
  }

  void merge(List<int> arr, int left, int mid, int right) {
    List<int> temp = [];
    int i = left;
    int j = mid + 1;

    while (i <= mid && j <= right) {
      if (arr[i] <= arr[j]) {
        temp.add(arr[i]);
        i++;
      } else {
        temp.add(arr[j]);
        j++;
      }
    }

    while (i <= mid) {
      temp.add(arr[i]);
      i++;
    }

    while (j <= right) {
      temp.add(arr[j]);
      j++;
    }

    for (int k = 0; k < temp.length; k++) {
      arr[left + k] = temp[k];
    }
  }
}
