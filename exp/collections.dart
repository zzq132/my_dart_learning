void main() {
  //List
  var list = [1, 2, 3];
  var list1 = [
    'Car',
    'Boat',
    'Plane',
  ];
  var list3 = [1, 2, 3];
  assert(list3.length == 3);
  assert(list3[1] == 2);
  list3[1] = 1;
  assert(list3[1] == 1);
  //add value
  list.add(4);
  print(list);

  //Set
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  //To create an empty set, use {} preceded by a type argument,
  //or assign {} to a variable of type Set:
  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  //Map
  var gifts0 = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases0 = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  //create same map object as above
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var gifts1 = {'first': 'partridge'};
  gifts1['fourth'] = 'calling birds'; // Add a key-value pair
  assert(gifts1['first'] == 'partridge');
  assert(gifts1['fifth'] == null);
  assert(gifts1.length == 2);

  //Operators
  //you can use the spread operator (...) to insert all the values of a list into another list:
  var list4 = [1, 2, 3];
  var list5 = [0, ...list4];
  assert(list5.length == 4);

  //根据if判断是否加入某个值
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
