void main(List<String> args) {
  /**
   * for loop
   */
  for (var i = 0; i < 4; i++) {
    print("${i + 1} times: Hello!");
  }

  // print even number <= 10
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) print(i);
  }

  // for-in loop
  List<String> planetList = ["Mercury", "Venus", "Earth", "Mars"];
  for (String planet in planetList) {
    print("planet $planet is so beautiful...!");
  }

  /**
   * while loop
   */
  var i = 0;
  while (i < 4) {
    print("${i + 1} times: Hello!");
    i++;
  }

  /**
   * do-while loop
   */
  i = 0;
  do {
    print("${i + 1} times: Hello!");
    i++;
  } while (i < 4);

  /**
   * break & continue
   */
  for (int i = 1; i <= 100; i++) {
    if (i == 5) continue;
    print(i);
    var time = DateTime.now().millisecond;
    if (time % 2 == 0) break;
  }

  print("default break statement");
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i $j");
      if (i == 2 && j == 2) break; // only breaks inner for loop
    }
  }

  // label을 이용하면 outer loop도 break로 탈출 가능
  print("break with label statement");
  outerLoop1:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i $j");
      if (i == 2 && j == 2) break outerLoop1; // break outer loop
    }
  }

  // label을 이용하여 outer loop에 continue 적용하기
  print("continue with label statement");
  outerLoop2:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue outerLoop2;
      }
      print("$i $j");
    }
  }
}
