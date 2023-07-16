void main(List<String> args) {
  int result = 12 ~/ 4; // int형 나눗셈
  print("result: $result");

  // try / on
  try {
    print("CASE 1.");
    result = 12 ~/ 0; // IntegerDivisionByZeroException
    print("result: $result");
  } on IntegerDivisionByZeroException {
    // IntegerDivisionByZeroException은 deprecated이므로 UnsupportedError를 사용하라고 권장함
    print("can't divide by zero!");
  }

  // try / catch
  try {
    print("CASE 2.");
    result = 12 ~/ 0; // IntegerDivisionByZeroException
    print("result: $result");
  } catch (e, s) {
    print("The exception thrown: $e");
    print("[STACK TRACE] \n$s");
  }

  // try / catch / finally
  try {
    print("CASE 3.");
    result = 12 ~/ 0; // IntegerDivisionByZeroException
  } catch (e) {
    print("The exception thrown: $e");
  } finally {
    print("This line will be printed anyway...");
  }

  // Custom exception class
  try {
    depositMoney(-2000);
  } catch (e) {
    print(e.toString());
  }
}

/**
 * Custom exception class
 */
class DepositException implements Exception {
  String errorMessage() => "You can't enter amount less than 0";
}

void depositMoney(int money) {
  if (money < 0) {
    throw new DepositException();
  }
}
