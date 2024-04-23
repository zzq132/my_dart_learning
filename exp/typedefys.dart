typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>;
typedef Compare<T> = int Function(T a, T b);
void main() {
  IntList il = [1, 2, 3];

  Map<String, List<String>> m1 = {}; // Verbose.
  ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

  assert(sort is Compare<int>); // True!
}

int sort(int a, int b) => a - b;
