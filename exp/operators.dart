void main() {
  //Operators
  int a = 1, b = 2, c = 3;
  int d;
  a++;
  a + b;
  a = b;
  a == b;
  d = c == a ? a : b; //三元运算符
  bool check = a is String;
  if (!check) {
    print("variable a isn't int");
  }

  //Operator precedence example
  int n = 12, e = 2, i = 3;
  //each operator has higher precedence than the operators in the rows that follow it
  if ((n % e == 0) && (n % i == 0)) {
    print("Yes");
  }
  //equivalent to the above one
  if (n % e == 0 && n % i == 0) {
    print("Yes too");
  }

  //Arithmetic operators
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(
      5 ~/ 2 == 2); // Result is an int; ~/ Divide, returning an integer result
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  //--------
  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0

  //Equality and relational operators
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  //Type test operators
  var employee = new Person();
  (employee as Person).name = "Bob";
  //用is检查obj是否是Object(String,int,...)声明的实例
  if (employee is Person) {
    employee.name = "Bob";
  }

  //Assignment operators
  // Assign value to a
  a = 1;
  // Assign value to b if b is null; otherwise, b stays the same
  b ??= 1;

  //Logical operators
  var done = false, col = 3;
  if (!done && (col == 0 || col == 3)) {
    // ...Do something...
  }

  //Bitwise and shift operators
  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR

  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right

  // Shift right example that results in different behavior on web
  // because the operand value changes when masked to 32 bits:
  assert((-value >> 4) == -0x03);

  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >>> 4) > 0); // Unsigned shift right

  //Conditional expressions
  var visibility = done ? 'public' : 'private';

  //Cascade notation
  //不需使用实例访问对象中的方法与变量
  var paint = Paint()
    ..color = 'color'
    ..strokeCap = 'strokeCap'
    ..strokeWidth = 'strokeWidth';
  //The previous example is equivalent to this code:
  var paint1 = Paint();
  paint1.color = 'color';
  paint1.strokeCap = 'strokeCap';
  paint1.strokeWidth = 'strokeWidth';
}

class Person {
  String? name;
}

class Paint {
  String? color;
  String? strokeCap;
  String? strokeWidth;
}
