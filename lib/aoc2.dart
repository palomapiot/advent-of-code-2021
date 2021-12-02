import 'dart:io';
import 'dart:convert';

Future<List<String>> readFileByLines() async {
  var path = './res/aoc2.txt';
  var data = <String>[];
  await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((l) => data.add(l));
  return data;
}

int dive(List<String> data) {
  var horizontal = 0;
  var depth = 0;
  for (var item in data) {
    var value = int.parse(item.split(' ')[1]);
    if (item.contains('forward')) {
      horizontal += value;
    } else if (item.contains('down')) {
      depth += value;
    } else {
      depth -= value;
    }
  }
  return horizontal * depth;
}

int dive2(List<String> data) {
  var horizontal = 0;
  var depth = 0;
  var aim = 0;
  for (var item in data) {
    var value = int.parse(item.split(' ')[1]);
    if (item.contains('forward')) {
      horizontal += value;
      depth += aim * value;
    } else if (item.contains('down')) {
      aim += value;
    } else {
      aim -= value;
    }
  }
  return horizontal * depth;
}
