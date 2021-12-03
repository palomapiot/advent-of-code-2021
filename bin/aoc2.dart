import 'package:advent_of_code_2021/aoc2.dart' as aoc2;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readStringFileByLines('./res/aoc2.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 2: Dive! 1: ' + aoc2.dive(data).toString());
    print('Day 2: Dive! 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 2: Dive! 2: ' + aoc2.dive2(data).toString());
    print('Day 2: Dive! 2 executed in ${stopwatch.elapsed}');
  });
}
