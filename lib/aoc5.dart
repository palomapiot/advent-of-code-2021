int hydrothermalVenture(List<String> data) {
  var cells = List.generate(1000, (i) => List.generate(1000, (j) => 0));

  for (var j = 0; j < data.length; j++) {
    var item = data[j].split('->');
    var x1y1 = item[0].trim();
    var x2y2 = item[1].trim();
    var x1 = int.parse(x1y1.split(',')[0]);
    var x2 = int.parse(x2y2.split(',')[0]);
    var y1 = int.parse(x1y1.split(',')[1]);
    var y2 = int.parse(x2y2.split(',')[1]);

    if (x1 == x2) {
      if (y1 < y2) {
        for (var i = y1; i <= y2; i++) {
          cells[x1][i] = cells[x1][i] + 1;
        }
      } else if (y2 < y1) {
        for (var i = y2; i <= y1; i++) {
          cells[x1][i] = cells[x1][i] + 1;
        }
      } else {
        cells[x1][y1] = cells[x1][y1] + 1;
      }
    } else if (y1 == y2) {
      if (x1 < x2) {
        for (var i = x1; i <= x2; i++) {
          cells[i][y1] = cells[i][y1] + 1;
        }
      } else if (x2 < x1) {
        for (var i = x2; i <= x1; i++) {
          cells[i][y1] = cells[i][y1] + 1;
        }
      } else {
        cells[x1][y1] = cells[x1][y1] + 1;
      }
    }
  }
  var count = 0;
  for (var cell in cells) {
    count = count + cell.whereType<int>().where((e) => e > 1).toList().length;
  }
  return count; // 5145
}

int hydrothermalVenture2(List<String> data) {
  var cells = List.generate(1000, (i) => List.generate(1000, (j) => 0));

  for (var j = 0; j < data.length; j++) {
    var item = data[j].split('->');
    var x1y1 = item[0].trim();
    var x2y2 = item[1].trim();
    var x1 = int.parse(x1y1.split(',')[0]);
    var x2 = int.parse(x2y2.split(',')[0]);
    var y1 = int.parse(x1y1.split(',')[1]);
    var y2 = int.parse(x2y2.split(',')[1]);

    if (x1 == x2) {
      if (y1 < y2) {
        for (var i = y1; i <= y2; i++) {
          cells[x1][i] = cells[x1][i] + 1;
        }
      } else if (y2 < y1) {
        for (var i = y2; i <= y1; i++) {
          cells[x1][i] = cells[x1][i] + 1;
        }
      } else {
        cells[x1][y1] = cells[x1][y1] + 1;
      }
    } else if (y1 == y2) {
      if (x1 < x2) {
        for (var i = x1; i <= x2; i++) {
          cells[i][y1] = cells[i][y1] + 1;
        }
      } else if (x2 < x1) {
        for (var i = x2; i <= x1; i++) {
          cells[i][y1] = cells[i][y1] + 1;
        }
      } else {
        cells[x1][y1] = cells[x1][y1] + 1;
      }
    } else {
      if (x1 < x2 && y1 < y2) {
        var idx = 0;
        for (var i = x1; i <= x2; i++) {
          cells[i][y1 + idx] = cells[i][y1 + idx] + 1;
          idx += 1;
        }
      } else if (x1 < x2 && y1 > y2) {
        var idx = 0;
        for (var i = x1; i <= x2; i++) {
          cells[i][y1 - idx] = cells[i][y1 - idx] + 1;
          idx += 1;
        }
      } else if (y1 > y2 && x1 > x2) {
        var idx = 0;
        for (var i = y2; i <= y1; i++) {
          cells[x2 + idx][i] = cells[x2 + idx][i] + 1;
          idx += 1;
        }
      } else if (y1 < y2 && x1 > x2) {
        var idx = 0;
        for (var i = y1; i <= y2; i++) {
          cells[x1 - idx][i] = cells[x1 - idx][i] + 1;
          idx += 1;
        }
      }
    }
  }
  var count = 0;
  for (var cell in cells) {
    count = count + cell.whereType<int>().where((e) => e > 1).toList().length;
  }
  return count; // 16518
}
