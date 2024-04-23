void main() {
  //For loops
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  var candidates = ['Tom', 'Jerry'];
  for (final candidate in candidates) {
    print(candidate);
  }

  //Iterable classes also have a forEach() method as another option:
  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

  //While loops
  var tag = true;
  while (tag) {
    //do somthing
    tag = false;
  }

  do {
    print('This is do');
  } while (tag);

  //Break and continue
  while (true) {
    break;
  }
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate == 'Tom') {
      continue;
    }
    print(candidate);
  }
}
