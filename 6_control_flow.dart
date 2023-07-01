void main(List<String> args) {
  /**
   * IF & ELSE statements
   * else if, else 문은 생략 가능 (C, Java 계열 언어와 동일)
   */
  var salary = 15000;
  if (salary > 20000) {
    print("You got promotion. Congratulations!");
  } else if (salary > 15000) {
    print("It's ok...?");
  } else {
    print("That's too bad...");
  }

  var marks = 70;
  if (marks >= 90 && marks < 100) {
    print("A+ grade");
  } else if (80 <= marks && marks < 90) {
    // 80 <= marks < 90 과 같이 작성하면 error!
    print("A grade");
  } else if (marks >= 70 && marks < 80) {
    print("B grade");
  } else if (marks >= 60 && marks < 70) {
    print("C grade");
  } else if (marks >= 30 && marks < 60) {
    print("D grade");
  } else if (marks < 30) {
    print("You have failed!");
  } else {
    print("Invalid input!!!");
  }
}
