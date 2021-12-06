int binaryDiagnostic(List<String> data) {
  var gammaRate = StringBuffer();
  var epsilonRate = StringBuffer();
  for (var i = 0; i < data[0].length; i++) {
    var positions = data.map((e) => e[i]).toList();
    var ones = positions.where((e) => e.toString() == '1').length;
    if (ones > (positions.length - ones)) {
      gammaRate.write('1');
      epsilonRate.write('0');
    } else {
      gammaRate.write('0');
      epsilonRate.write('1');
    }
  }
  return int.parse(gammaRate.toString(), radix: 2) *
      int.parse(epsilonRate.toString(), radix: 2); //1997414
}

int binaryDiagnostic2(List<String> data) {
  return int.parse(calculate(data.toList(), data[0].length, (a, b) => a >= b),
          radix: 2) *
      int.parse(calculate(data.toList(), data[0].length, (a, b) => a < b),
          radix: 2);
}

String calculate(List<String> data, int numberLength, Function f) {
  var rating = '';
  for (var i = 0; i < numberLength; i++) {
    var positions = data.map((e) => e[i]).toList();
    var ones = positions.where((e) => e.toString() == '1').length;
    f(ones, positions.length - ones)
        ? data.removeWhere((e) => e[i] == '0')
        : data.removeWhere((e) => e[i] == '1');
    data.length == 1 ? rating = data.first : null;
  }
  return rating; // 1032597
}
