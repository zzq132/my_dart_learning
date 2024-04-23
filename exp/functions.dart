void main(List<String> arguments) {
  enableFlags(bold: true, hidden: false);
  enableFlags1(bold: true);

  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');

  assert(say1('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  print(arguments);
  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');

  //匿名函数(){}
  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });
}

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool? bold, bool? hidden}) {}

/// Sets the [bold] and [hidden] flags ...
void enableFlags1({bool bold = false, bool hidden = false}) {}

//The 3 functions below are same
var _nobleGases = [];
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble1(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;

//Optional positional parameters
//[]中的参数为可选参数
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String say1(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}
