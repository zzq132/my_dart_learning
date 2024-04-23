void main() {
  //Record syntax
  //Records expressions are comma-delimited lists of named or positional fields,
  //enclosed in parentheses
  var record = ('first', a: 2, b: true, 'last');

  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Record type annotation in a variable declaration:
  (String, int) record1;

  // Initialize it with a record expression:
  record1 = ('A string', 123);

  // Record type annotation in a variable declaration:
  ({int a, bool b}) record2;

  // Initialize it with a record expression:
  record2 = (a: 123, b: true);

  //The names of named fields in a record type are part of the record's type definition, or its shape.
  //Two records with named fields with different names have different types:
  //record中变量名字不同二者也不同
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  // recordAB = recordXY;
  // Compile error! These records don't have the same type.

  (int a, int b) recordAB1 = (1, 2);
  (int x, int y) recordXY1 = (3, 4);
  recordAB1 = recordXY1; // OK.

  //Record fields
  var record3 = ('first', 'second', b: true, 'last');

  print(record3.$1); // Prints 'first'
  print(record3.$2); // Prints 'second'
  print(record3.b); // Prints true
  print(record3.$3); // Prints 'last'

  //Record types
  (num, Object) pair = (42, 'a');
  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.

  //Record equality
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Prints 'true'.

  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color1 = (r: 1, g: 2, b: 3);

  print(point1 == color1); // Prints 'false'. Lint: Equals on unrelated types.

  //Multiple returns
  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
  */
}
