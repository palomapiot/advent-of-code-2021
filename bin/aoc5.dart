import 'package:advent_of_code_2021/aoc5.dart' as aoc5;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readStringFileByLines('./res/aoc5.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 5: Hydrothermal Venture 1: ' +
        aoc5.hydrothermalVenture(data).toString());
    print('Day 5: Hydrothermal Venture 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 5: Hydrothermal Venture 2: ' +
        aoc5.hydrothermalVenture2(data).toString());
    print('Day 5: Hydrothermal Venture 2 executed in ${stopwatch.elapsed}');
  });
}
