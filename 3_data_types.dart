void main(List<String> args) {
  /**
   * number, string, boolean, list, map, rune, symbol
   * all the data types are "nullable object".
   */

  // variable declaration
  int age = 10;

  // or you can declare variable using <var>...
  var ageVar = 10; // automatic type inference

  // Number: int
  int score = 23;
  var count = 23;

  int hexValue = 0xDEADBEEF;
  print(hexValue);

  // Number: double
  double percentage = 93.4;
  var percent = 82.5333;
  double exponents = 1.42e-5;
  print(percent);
  print(exponents);

  // Boolean
  bool isValid = true;
  var isInvalid = false;
  print(isInvalid);

  // String
  String name; // null
  name = "dave.lake"; // double-quote
  name = 'jiho rhee'; // single-quote is also OK
  print(name);
}
