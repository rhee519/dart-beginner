void main(List<String> args) {
  // 1. condition ? exp1 : exp2 (삼항연산자)
  int a = 2;
  int b = 3;
  a < b ? print("$a < $b") : print("$a >= $b");
  var smaller = a < b ? a : b;
  print("$smaller is smaller.");

  // 2. exp1 ?? exp2 (nullity check)
  var name;
  if (DateTime.now().millisecond % 2 == 0) {
    name = "dave.lake";
  }
  String nameToPrint = name ?? "Guest User";
  print(nameToPrint);

  /**
   * Switch Case Statements
   * applicable for only int and String
   */
  String grade = 'A';
  switch (grade) {
    case 'A':
      print("Excellent!");
      break;
    case 'B':
      print("Very good!");
      break;
    case 'C':
      print("Good enough... but go hard!");
      break;
    case 'F':
      print("You have failed!!!");
      break;
    default:
      print("Invalid grade.");
  }
}
