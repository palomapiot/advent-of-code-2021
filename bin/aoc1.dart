import 'package:advent_of_code_2021/aoc1.dart' as aoc1;

void main(List<String> arguments) {
  aoc1.readFileByLines().then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 1: Sonar Sweep 1: ' + aoc1.sonar_sweep(data).toString());
    print('Day 1: Sonar Sweep 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 1: Sonar Sweep 2: ' + aoc1.sonar_sweep2(data).toString());
    print('Day 1: Sonar Sweep 2 executed in ${stopwatch.elapsed}');
  });
}
