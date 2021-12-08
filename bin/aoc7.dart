import 'package:advent_of_code_2021/aoc7.dart' as aoc7;
import 'package:advent_of_code_2021/common.dart' as common;

void main(List<String> arguments) {
  common.readFirstLineNumbers('./res/aoc7.txt').then((data) {
    var stopwatch = Stopwatch()..start();
    print('Day 7: The Treachery of Whales 1: ' + aoc7.whales(data).toString());
    print('Day 7: The Treachery of Whales 1 executed in ${stopwatch.elapsed}');
    stopwatch = Stopwatch()..start();
    print('Day 7: The Treachery of Whales 2: ' + aoc7.whales2(data).toString());
    print('Day 7: The Treachery of Whales 2 executed in ${stopwatch.elapsed}');
  });
}
