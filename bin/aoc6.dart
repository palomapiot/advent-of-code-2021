import 'package:advent_of_code_2021/aoc6.dart' as aoc6;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readFirstLineNumbers('./res/aoc6.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 6: Lanternfish 1: ' + aoc6.lanternfish(data, 80).toString());
    print('Day 6: Lanternfish 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 6: Lanternfish 2: ' + aoc6.lanternfish(data, 256).toString());
    print('Day 6: Lanternfish 2 executed in ${stopwatch.elapsed}');
  });
}
