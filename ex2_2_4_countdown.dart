import 'dart:async';

Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  yield "หมดเวลา!";
}

void main() async {
  print("--- เริ่มต้นการนับถอยหลัง ---");
  int startValue = 5;

  await for (var value in countdown(startValue)) {
    print(value);
  }
  print("--- จบการทำงานของโปรแกรม ---");
}
