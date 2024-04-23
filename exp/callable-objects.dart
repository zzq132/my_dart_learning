class HelloWorld {
  String call(String a, String b) => '$a $b!';
  void method() => print("This is a method");
}

void main() {
  HelloWorld hi = HelloWorld();
  var out = hi("Hello", "world");
  print(out);
  String msg = hi.call('Hello', 'wrold');
  print(msg);
  hi.method();
}
