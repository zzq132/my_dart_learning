void main() {
  //If
  if (isRaining()) {
  } else if (isSnowing()) {
  } else {}

  var pair;
  if (pair case [int x, int y]) {
    print('Was coordinate array $x,$y');
  } else {
    throw FormatException('Invalid coordinates.');
  }

  //Switch
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
    case 'PENDING':
    case 'APPROVED':
    case 'DENIED':
    case 'OPEN':
    default:
  }

  switch (command) {
    case 'OPEN':
      print('open');
      continue newCase; // Continues executing at the newCase label.

    case 'DENIED': // Empty case falls through.
    case 'CLOSED':
      print('closed'); // Runs for both DENIED and CLOSED,

    newCase:
    case 'PENDING':
      print('pending'); // Runs for both OPEN and PENDING.
  }

  //var x = switch (y) {};
  //print(switch (x) { });
  //return switch (x) { };

  /* switch (charCode) {
    case slash || star || plus || minus: // Logical-or pattern
      token = operator(charCode);
    case comma || semicolon: // Logical-or pattern
      token = punctuation(charCode);
    case >= digit0 && <= digit9: // Relational and logical-and patterns
      token = number();
    default:
      throw FormatException('Invalid');
  } */

  var nullableBool;
  switch (nullableBool) {
    case true:
      print('yes');
    case false:
      print('no');
  }
}

bool isRaining() {
  return true;
}

bool isSnowing() {
  return false;
}
