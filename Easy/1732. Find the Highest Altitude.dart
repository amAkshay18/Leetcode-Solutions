int largestAltitude(List<int> gain) {
  int altitude = 0;
  int maxAltitude = 0;
  for (int i = 0; i < gain.length; i++) {
    altitude += gain[i];
    if (altitude > maxAltitude) maxAltitude = altitude;
  }
  return maxAltitude;
}
