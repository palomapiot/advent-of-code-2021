import 'dart:io';
import 'dart:convert';

Future<List<int>> readIntFileByLines(String file) async {
  var path = file;
  var data = <int>[];
  await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((l) => data.add(int.parse(l)));
  return data;
}

Future<List<String>> readStringFileByLines(String file) async {
  var path = file;
  var data = <String>[];
  await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((l) => data.add(l));
  return data;
}

Future<List<int>> readFirstLineNumbers(String file) async {
  var path = file;
  var data = await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .first;
  var numbers = <int>[];
  data.split(',').forEach((element) {
    numbers.add(int.parse(element));
  });
  return numbers;
}
