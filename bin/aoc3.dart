import 'package:advent_of_code_2021/aoc3.dart' as aoc3;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readStringFileByLines('./res/aoc3.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 3: Binary Diagnostic 1: ' +
        aoc3.binaryDiagnostic(data).toString());
    print('Day 3: Binary Diagnostic 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 3: Binary Diagnostic 2: ' +
        aoc3.binaryDiagnostic2(data).toString());
    print('Day 3: Binary Diagnostic 2 executed in ${stopwatch.elapsed}');
  });
}
