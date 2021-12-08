import 'dart:math';

int median(List<int> a) {
  a.sort();
  var middle = a.length ~/ 2;
  if (a.length % 2 == 1) {
    return a[(a.length / 2 + 0.5).toInt()];
  } else {
    return (a[middle - 1] + a[middle]) ~/ 2;
  }
}

int whales(List<int> data) {
  var cheapest = median(data);
  return [for (var pos in data) (cheapest - pos).abs()]
      .reduce((a, b) => a + b); // 336131
}

int whales2(List<int> data) {
  var pos = data.reduce((a, b) => a + b) ~/ data.length;
  var cheapests = [pos, pos + 1];
  var fuel = [0, 0];
  for (var i = 0; i < cheapests.length; i++) {
    for (var c in data) {
      fuel[i] += ((pos - c).abs() * ((pos - c).abs() + 1) ~/ 2).abs();
    }
  }
  return fuel.reduce(min); // 92676646
}
