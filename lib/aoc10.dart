int syntaxScoring(List<String> data) {
  var sum = 0;
  for (var line in data) {
    var temp = [];
    for (var char in line.split('')) {
      if ([')', ']', '}', '>'].contains(char)) {
        if (char == ')') {
          if (temp[temp.length - 1] == '(') {
            temp.removeLast();
          } else {
            sum += 3;
            break;
          }
        } else if (char == ']') {
          if (temp[temp.length - 1] == '[') {
            temp.removeLast();
          } else {
            sum += 57;
            break;
          }
        } else if (char == '}') {
          if (temp[temp.length - 1] == '{') {
            temp.removeLast();
          } else {
            sum += 1197;
            break;
          }
        } else if (char == '>') {
          if (temp[temp.length - 1] == '<') {
            temp.removeLast();
          } else {
            sum += 25137;
            break;
          }
        }
      } else {
        temp.add(char);
      }
    }
  }
  return sum; // 364389
}

int syntaxScoring2(List<String> data) {
  var sums = [];
  for (var line in data) {
    var temp = [];
    var incorrect = false;
    for (var char in line.split('')) {
      if ([')', ']', '}', '>'].contains(char)) {
        if (char == ')') {
          if (temp[temp.length - 1] == '(') {
            temp.removeLast();
          } else {
            incorrect = true;
            break;
          }
        } else if (char == ']') {
          if (temp[temp.length - 1] == '[') {
            temp.removeLast();
          } else {
            incorrect = true;
            break;
          }
        } else if (char == '}') {
          if (temp[temp.length - 1] == '{') {
            temp.removeLast();
          } else {
            incorrect = true;
            break;
          }
        } else if (char == '>') {
          if (temp[temp.length - 1] == '<') {
            temp.removeLast();
          } else {
            incorrect = true;
            break;
          }
        }
      } else {
        temp.add(char);
      }
    }
    if (!incorrect) {
      var sum = 0;
      for (var char in temp.reversed) {
        if (char == '(') {
          sum = sum * 5 + 1;
        } else if (char == '[') {
          sum = sum * 5 + 2;
        } else if (char == '{') {
          sum = sum * 5 + 3;
        } else if (char == '<') {
          sum = sum * 5 + 4;
        }
      }
      sums.add(sum);
    }
  }
  sums = List.from(sums.reversed);
  sums.sort();
  return sums[(sums.length - 1) ~/ 2]; // 2870201088
}
