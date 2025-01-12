void main() {
  ///
  /// swapping variable - traditional way
  ///
  int a = 5;
  int b = 10;
  int temp;

  print('Before swapping...');
  print('Value of a: $a');
  print('Value of b: $b');
  print('');
  temp = a;
  a = b;
  b = temp;
  print('After swapping...');
  print('Value of a: $a');
  print('Value of b: $b');
  print('');

  ///
  /// swapping variable - destructuring assingment way
  ///

  a = 5;
  b = 10;

  print('Before swapping...');
  print('Value of a: $a');
  print('Value of b: $b');
  print('');
  (a, b) = (b, a);
  print('After swapping...');
  print('Value of a: $a');
  print('Value of b: $b');
}
