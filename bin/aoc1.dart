import 'package:advent_of_code_2021/aoc1.dart' as aoc1;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readIntFileByLines('./res/aoc1.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 1: Sonar Sweep 1: ' + aoc1.sonarSweep(data).toString());
    print('Day 1: Sonar Sweep 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 1: Sonar Sweep 2: ' + aoc1.sonarSweep2(data).toString());
    print('Day 1: Sonar Sweep 2 executed in ${stopwatch.elapsed}');
  });
}
