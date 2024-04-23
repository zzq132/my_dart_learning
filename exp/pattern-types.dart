enum Color { red, yellow, blue }

void main() {
  Color color = Color.blue;
  var isPrimary = switch (color) {
    Color.red || Color.yellow || Color.blue => true,
    _ => false
  };
  switch ((1, 2)) {
    case (var a, var b) && (var b, var c): // ...
  }

  (num, Object) record = (1, 's');
  var (i as int, s as String) = record;

  String? maybeString = 'nullable with base type String';
  switch (maybeString) {
    case var s?:
  }

  List<String?> row = ['user', null];
  switch (row) {
    case ['user', var name!]: // ...
  }

  int number = 1;
  switch (number) {
    case 1: // ...
  }

  switch ((1, 2)) {
    // Does not match.
    case (int a, String b): // ...
  }

  const c = 1;
  switch (2) {
    case c:
      print('match $c');
    default:
      print('no match');
  }

  const a = 'a';
  const b = 'b';
  var obj;
  switch (obj) {
    case [a, b]:
      print('$a, $b');
  }

  var [a1, b1, ..., c1, d1] = [1, 2, 3, 4, 5, 6, 7];
  //1 2 6 7
  print('$a1 $b1 $c1 $d1');
  var [a2, b2, ...rest, c2, d2] = [1, 2, 3, 4, 5, 6, 7];
  // Prints "1 2 [3, 4, 5] 6 7".
  print('$a2 $b2 $rest $c2 $d2');

  // Record pattern with variable subpatterns:
  var (untyped: untyped, typed: int typed) = record;
  var (:untyped, :int typed) = record;

  switch (record) {
    case (untyped: var untyped, typed: int typed): // ...
    case (:var untyped, :int typed): // ...
  }

  // Record pattern with null-check and null-assert subpatterns:
  switch (record) {
    case (checked: var checked?, asserted: var asserted!): // ...
    case (:var checked?, :var asserted!): // ...
  }

  // Record pattern with cast subpattern:
  var (untyped: untyped as int, typed: typed as String) = record;
  var (:untyped as int, :typed as String) = record;
}

String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => ''
  };
}
