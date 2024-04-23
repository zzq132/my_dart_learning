enum Color { red, green, blue }

void main() {
  final favoriteColor = Color.blue;
  if (favoriteColor == Color.blue) {
    print('Your favorite color is blue!');
  }

  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> list = Color.values;
  assert(list[0] == Color.red);
  for (Color color in list) {
    print(color.name);
  }

  var aColor = Color.red;
  switch (aColor) {
    case Color.red:
      print('Red as roses!');
    case Color.green:
      print('Green as grass!');
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }
}
