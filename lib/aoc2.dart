int dive(List<String> data) {
  var horizontal = 0;
  var depth = 0;
  data.forEach((item) {
    var value = int.parse(item.split(' ')[1]);
    item.contains('forward')
        ? horizontal += value
        : item.contains('down') ? depth += value : depth -= value;
  });
  return horizontal * depth; // 1524750
}

int dive2(List<String> data) {
  var horizontal = 0;
  var depth = 0;
  var aim = 0;
  data.forEach((item) {
    var value = int.parse(item.split(' ')[1]);
    if (item.contains('forward')) {
      horizontal += value;
      depth += aim * value;
    } else {
      item.contains('down') ? aim += value : aim -= value;
    }
  });
  return horizontal * depth; // 1592426537
}
