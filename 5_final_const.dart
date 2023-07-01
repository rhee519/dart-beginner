void main(List<String> args) {
  /**
   * final, const
   * 초기화 후 값을 변경하지 않을 변수에게 붙이는 keyword
   */

  /**
   * final
   * 오직 한 번만 초기화할 수 있으며, 변수를 참조할 때 초기화됨
   */
  final name = "dave";
  final String typedName = "dave"; // final에 타입 명시도 가능
  final cityName = "Seoul";
  // cityName = "Jeju"; // error!

  /**
   * const
   * final과 유사하지만, compile-time에 값이 결정됨
   */
  const PI = 3.14;
  const double gravity = 9.8;
  print(PI);

  /**
   * instance variable은 final로 선언할 수 있지만 const로는 선언 불가능!
   */
  final finalCircle = Circle(); // OK
  // const constCircle = Circle(); // error!
  print(finalCircle); // output: "Instance of 'Circle'"
}

class Circle {
  final color = 'Red';
  // const PI = 3.14; // error:
  static const PI = 3.14; // OK
}
