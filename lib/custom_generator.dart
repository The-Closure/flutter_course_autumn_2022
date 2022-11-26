import 'dart:math';

class CustomGenerator {
  int _next(int min, int max) => min + Random().nextInt(max - min);

  Future<int> _matchValue(int initValue, int limit) async {
    bool state = true;
    int currentValue = 0;
    while (state) {
      currentValue = _next(limit, initValue);
      if ((currentValue + 1) == initValue) state = false;
      await Future.delayed(Duration(milliseconds: 10));
      // else
      // print('$currentValue did not match $initValue');
    }
    return currentValue;
  }

  Future<int> calculateDate(int initValue) async {
    DateTime now = DateTime.now();
    int correctValue = await _matchValue(initValue, 50);
    DateTime afterMatch = DateTime.now();
    int diff = afterMatch.millisecondsSinceEpoch - now.millisecondsSinceEpoch;
    return diff;
  }

  Stream<DateTime> generateRealTimeDate() async* {
    while (true) {
      yield DateTime.now();
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
