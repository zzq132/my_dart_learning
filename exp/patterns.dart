enum Color { red, blue, yellow }

void main() {
  //Matching
  int? number;
  switch (number) {
    case 1:
      print('one');
  }
  const a1 = 'a';
  const b1 = 'b';
  var obj = ['a', 'b'];
  switch (obj) {
    //首先匹配列表维度，若维度相同再匹配元素
    case [a1, b1]:
      print('$a1, $b1');
  }
  //Destructuring
  //解构赋值
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print(a + b + c);
  List list = ['b', c];
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }

  //Variable assignment
  var (a2, b2) = ('left', 'right');
  (b2, a2) = (a2, b2); // 交换
  print('$a2 $b2'); // "right left".

  //Switch statements and expressions
  const first = 1;
  const last = 10;
  var obj1 = 2;
  switch (obj1) {
    case 1:
      print('one');
    case >= first && <= last:
      print('in range');
    case (var a, var b):
      print('a = $a, b = $b');
    default:
  }

  Color? color;
  var isPrimary = switch (color) {
    Color.red || Color.yellow || Color.blue => true,
    _ => false
  };

  var pair;
  switch (pair) {
    case (int a, int b):
      if (a > b) print('First element greater');
    case (int a, int b) when a > b:
      print('First element greater');
    case (int a, int b):
      print('First element not greater');
  }

  //For and for-in loops
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  //Use cases for patterns
  //Destructuring multiple returns
  var info = userInfo(json);
  var name = info.$1;
  var age = info.$2;
  var (name1, age1) = userInfo(json);
  //Destructuring class instances
  final Foo myFoo = Foo(one: 'one', two: 2);
  var Foo(:one, :two) = myFoo;
  print('one $one, two $two');
  //Algebraic data types
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l) => l * l,
      Circle(radius: var r) => math.pi * r * r
    };

mixin math {
  static double pi = 3.14;
}
