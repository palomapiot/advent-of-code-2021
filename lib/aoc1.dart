int sonarSweep(List<int> data) {
  var increased = 0;
  for (var i = 1; i < data.length; i++) {
    data[i] > data[i - 1] ? increased += 1 : null;
  }
  return increased; // 1448
}

int sonarSweep2(List<int> data) {
  var increased = 0;
  var prevSum = data[0] + data[1] + data[2];
  for (var i = 3; i < data.length; i++) {
    var newSum = prevSum + data[i] - data[i - 3];
    newSum > prevSum ? increased += 1 : null;
    prevSum = newSum;
  }
  return increased;
}
