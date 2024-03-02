List<int> findPeaks(List<int> mountain) {
  List<int> peaks = [];
  for (int i = 1; i < mountain.length - 1; i++) {
    if ((mountain[i] > mountain[i - 1]) && (mountain[i] > mountain[i + 1])) {
      peaks.add(i);
    }
  }
  return peaks;
}
