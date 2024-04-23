import 'string_apis.dart';

void main() {
  int num1 = int.parse('666');
  //same as:
  int num2 = '666'.parseInt();
  assert(num1 == num2);
  print("num1=$num1  num2=$num2");

  String msg = '12';
  print(msg.padLeft(6));
  print(msg.parseInt());
}
