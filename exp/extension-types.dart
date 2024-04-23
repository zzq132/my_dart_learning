extension type IdNumber(int id) {
  operator <(IdNumber other) => id < other.id;
}

extension type E0(int i) {}

extension type E1<T>(List<T> elements) {
  // ...
}

extension type E(int i) {
  E.n(this.i);
  E.m(int j, String foo) : i = j + foo.length;
}

extension type const E2._(int it) {
  E2() : this._(42);
  E2.otherName(this.it);
}

extension type NumberE(int value) {
  NumberE operator +(NumberE other) => NumberE(value + other.value);
  NumberE get myNum => this;
  bool isValid() => !value.isNegative;
}

extension type NumberI(int i) implements int {}

extension type Sequence<T>(List<T> _) implements Iterable<T> {}

extension type Id(int _id) implements Object {
  static Id? tryParse(String source) => int.tryParse(source) as Id?;
}

extension type const Opt<T>._(({T value})? _) {
  const factory Opt(T value) = Val<T>;
  const factory Opt.none() = Non<T>;
}
extension type const Val<T>._(({T value}) _) implements Opt<T> {
  const Val(T value) : this._((value: value));
  T get value => _.value;
}
extension type const Non<T>._(Null _) implements Opt<Never> {
  const Non() : this._(null);
}

extension type MyString(String _) implements String {
  int operator [](int index) => codeUnitAt(index);
}

extension type NumberE1(int value) {
  NumberE1 operator +(NumberE other) => NumberE1(value + other.value);

  NumberE1 get next => NumberE1(value + 1);
  bool isValid() => !value.isNegative;
}

void testE() {
  var num = NumberE1(1);
}

extension type NumberT(int value) implements int {
  NumberT get i => this;
}

void testE1() {
  var num1 = NumberE(1);
  //int num2 = NumberE(2); Error: Can't assign 'NumberE' to 'int'.

  num1.isValid();
  //num1.isNegative(); Error: 'NumberE' does not define 'int' member 'isNegative'.

  var sum1 = num1 + num1;
  //var diff1 = num1 - num1;  Error: 'NumberE' does not define 'int' member '-'.
  var diff2 = num1.value - 2;
  //var sum2 = num1 + 2;  Error: Can't assign 'int' to parameter type 'NumberE'.

  List<NumberE> numbers = [
    NumberE(1),
    //1, Error: Can't assign 'int' element to list type 'NumberE'.
  ];
}

void main() {
  int myUnsafeId = 42424242;
  myUnsafeId = myUnsafeId + 10;

  var safeId = IdNumber(42424242);
  //safeId + 10;  Compile-time error: No '+' operator.
  //myUnsafeId = safeId;  Compile-time error: Wrong type.
  myUnsafeId = safeId as int;
  safeId < IdNumber(42424241);

  E(4);
  E.n(3);
  E.m(5, "Hello!");

  E2();
  const E2._(2);
  E2.otherName(3);

  var v1 = NumberT(1);
  int v2 = NumberT(2);
  var v3 = v1.i - v1;
  var v4 = v2 + v1;
  var v5 = 2 + v1;
}
