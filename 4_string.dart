void main(List<String> args) {
  // Literals
  2;
  "dave";
  4.5;

  // Various ways to define String Literals in Dart
  String s1 = 'Single';
  String s2 = "Double";

  /**
   * "It's easy!" OK
   * 'It's easy!' Error!
   * 'It\'s easy!' OK
   */
  String s3 = "It's easy!";
  print(s3);

  // string concat을 위해 + 기호를 사용해도 되고, 생략해도 된다.
  String s4 = 'This is going to be a very long String. '
      'This is just a sample String demo in Dart Programming Language.';
  print(s4);

  // String interpolation
  String name = "dave";
  print("My name is ${name}");
  print("Again, my name is $name"); // 단일 변수 참조인 경우 {} 생략 가능
  print("# characters in String \"dave\" is ${name.length}");

  int l = 20;
  int b = 10;
  print("The sum of $l and $b = ${l + b}");
}
