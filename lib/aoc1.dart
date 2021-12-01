import 'dart:io';
import 'dart:convert';

Future<List<int>> readFileByLines() async {
  var path = './res/aoc1.txt';
  var data = <int>[];
  await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((l) => data.add(int.parse(l)));
  return data;
}

int sonar_sweep(List<int> data) {
  var increased = 0;
  for (var i = 1; i < data.length; i++) {
    if (data[i] > data[i - 1]) {
      increased += 1;
    }
  }
  return increased;
}

int sonar_sweep2(List<int> data) {
  var increased = 0;
  var prevSum = data[0] + data[1] + data[2];
  for (var i = 3; i < data.length; i++) {
    var newSum = prevSum + data[i] - data[i - 3];
    if (newSum > prevSum) {
      increased += 1;
    }
    prevSum = newSum;
  }
  return increased;
}
