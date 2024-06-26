late String description; //顶级变量和实例变量如果使用时不赋值需要用late声明
void main() {
  var name = 'Bob';
  Object name1 = 'Bob'; //Object可以为任意类型
  String name2 = 'Bob';
  String? name3; //Nullable type
  String name4; //Non-nullable type

  int? lineCount;
  assert(lineCount == null);
  int lineCount1 = 0;

  int lineCount2; //不必在开始赋值，使用前赋值就行
  lineCount2 = 0;
  print(lineCount2);

  description = 'Feijoada!';
  print(description);

  late String temperature = readThermometer();

  final name5 = 'Bob'; //final变量只能设置一次
  final String nickname = 'Bobby';
  // name5='Alice'; //Error

  const bar = 1000000;
  const double atm = 1.01325 * bar;

  var foo = const []; //无法向数组里面添加值
  final bar1 = const []; //无法向数组里面添加值
  const baz = []; //无法向数组里面添加值

  final list = []; //可以向数组中添加值
  list.add(12);
  print(list);

  foo = [1, 2, 3]; //可以修改var声明的变量，即使被const修饰过
  print(foo);

  // bar1=[1]; //Error
  // baz=[1]; //Error

  const Object i = 3; // Where i is a const Object with an int value...
  const list1 = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list1 is List<int>) ...list1}; // ...and a spread.
}

String readThermometer() {
  return "Thermometer";
}
