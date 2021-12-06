import 'dart:io';
import 'dart:convert';

Future<List<int>> readNumbers(String file) async {
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

Future<List<List<List<int>>>> readBoards(String file) async {
  var path = file;
  var data = <String>[];
  await File(path)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .skip(1)
      .where((e) => e.isNotEmpty)
      .forEach((l) => data.add(l));

  var boards = List.generate(data.length ~/ 5, (i) => <List<int>>[]);

  var idx = 0;
  for (var i = 0; i < data.length; i++) {
    if (i != 0 && i % 5 == 0) {
      idx += 1;
    }
    boards[idx].add(
        data[i].split(' ').where((e) => e.isNotEmpty).map(int.parse).toList());
  }

  return boards;
}

Future<int> giantSquid(String data) async {
  var isWinningBoard = false;
  var numbers = <int>[];
  var boards = List.generate(data.length ~/ 5, (i) => <List<int>>[]);
  await readNumbers(data).then((n) => {numbers = n});
  await readBoards(data).then((b) => {boards = b});
  for (var number in numbers) {
    for (var bidx = 0; bidx < boards.length; bidx++) {
      for (var lidx = 0; lidx < boards[bidx].length; lidx++) {
        boards[bidx][lidx].contains(number)
            ? boards[bidx][lidx] = [
                for (var x in boards[bidx][lidx]) if (x == number) null else x
              ]
            : null;
        boards[bidx][lidx].where((e) => e != null).toList().isEmpty
            ? isWinningBoard = true
            : null;
      }
      if (!isWinningBoard) {
        for (var i = 0; i < boards[bidx].length; i++) {
          var keepSearching = false;
          for (var row in boards[bidx]) {
            row[i] != null && !keepSearching ? keepSearching = true : null;
          }
          !keepSearching ? isWinningBoard = true : null;
        }
      }
      if (isWinningBoard) {
        var sum = boards[bidx]
            .expand((i) => i)
            .whereType<int>()
            .toList()
            .reduce((a, b) => a + b);
        return number * sum; // 35670
      }
    }
  }
  return null;
}

Future<int> giantSquid2(List<int> numbers, List<List<List<int>>> boards) async {
  var isWinningBoard = false;
  for (var number in numbers) {
    for (var bidx = 0; bidx < boards.length; bidx++) {
      for (var lidx = 0; lidx < boards[bidx].length; lidx++) {
        boards[bidx][lidx].contains(number)
            ? boards[bidx][lidx] = [
                for (var x in boards[bidx][lidx]) if (x == number) null else x
              ]
            : null;
        boards[bidx][lidx].where((e) => e != null).toList().isEmpty
            ? isWinningBoard = true
            : null;
      }
      if (!isWinningBoard) {
        for (var i = 0; i < boards[bidx].length; i++) {
          var keepSearching = false;
          for (var row in boards[bidx]) {
            row[i] != null && !keepSearching ? keepSearching = true : null;
          }
          !keepSearching ? isWinningBoard = true : null;
        }
      }
      if (isWinningBoard) {
        var sum = boards[bidx]
            .expand((i) => i)
            .whereType<int>()
            .toList()
            .reduce((a, b) => a + b);
        return number * sum; // 35670
      }
    }
  }
  return null;
}
