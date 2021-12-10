import 'package:advent_of_code_2021/aoc10.dart' as aoc10;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readStringFileByLines('./res/aoc10.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 10: Syntax Scoring 1: ' + aoc10.syntaxScoring(data).toString());
    print('Day 10: Syntax Scoring 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 10: Syntax Scoring 2: ' + aoc10.syntaxScoring2(data).toString());
    print('Day 10: Syntax Scoring 2 executed in ${stopwatch.elapsed}');
  });
}
