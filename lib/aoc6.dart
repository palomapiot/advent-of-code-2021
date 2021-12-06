List<int> init(List<int> data) {
  var fishes = List<int>.generate(9, (int index) => 0);
  [for (var fish in data) fishes[fish] += 1];
  return fishes;
}

int lanternfish(List<int> data, int maxDay) {
  var fishes = init(data);
  for (var day = 0; day < maxDay; day++) {
    var today = fishes[0];
    fishes.removeAt(0);
    fishes.add(today);
    fishes[6] = fishes[6] + today;
  }
  return fishes.reduce((a, b) => a + b);
}
