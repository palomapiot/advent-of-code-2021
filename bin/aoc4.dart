import 'package:advent_of_code_2021/aoc4.dart' as aoc4;

void main(List<String> arguments) {
  var stopwatch = Stopwatch()..start();
  aoc4
      .giantSquid('./res/aoc4.txt')
      .then((value) => print('Day 4: Giant Squid 1: ' + value.toString()));
  print('Day 4: Giant Squid 1 executed in ${stopwatch.elapsed}');
  stopwatch = Stopwatch()..start();
  aoc4.readNumbers('./res/aoc4.txt').then((n) => aoc4
      .readBoards('./res/aoc4.txt')
      .then((b) => aoc4.giantSquid2(n, b).then(
          (value) => print('Day 4: Giant Squid 2: ' + value.toString()))));
  print('Day 4: Giant Squid 2 executed in ${stopwatch.elapsed}');
}
