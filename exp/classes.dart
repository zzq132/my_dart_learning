import 'constructors.dart';
import 'dart:math';

void main() {
  //Using class members
  var p = Point(2, 2);

  // Get the value of y.
  assert(p.y == 2);

  //Using constructors
  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 1, 'y': 2});

  var c = const ImmutablePoint(1, 1);
  var d = const ImmutablePoint(1, 1);
  assert(identical(c, d)); // They are the same instance!

  var point = Point1();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.

  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  var a = Point2(2, 2);
  var b = Point2(4, 4);
  var distance = Point2.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}

class Point1 {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
}

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

//Static methods
class Point2 {
  double x, y;
  Point2(this.x, this.y);

  static double distanceBetween(Point2 a, Point2 b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}
