void main(List<String> args) {
  findPerimeter(4, 2);
  int rectArea = getArea(10, 5);
  print("The area is $rectArea");

  printCities("Seoul", "Tokyo"); // "Seoul", "Tokyo", null

  int volume = findVolume(10, width: 5, height: 3);
  print("Volume: $volume");
}

/**
 * dart에서, function도 object이다.
 * -> 다른 변수에 할당되거나, 다른 function의 parameter로 전달될 수 있음
 * 
 * 모든 function은 값을 리턴한다.
 * -> return statement가 없으면 null을 return
 * 
 * function 정의에서 return type을 명시하지 않아도 된다.
 * -> ex. (int) findArea(int length, int breath) { return length * breath; }
 * -> 하지만 가독성을 위해 명시하는 것을 추천
 */

void findPerimeter(int len, int width) {
  int perimeter = 2 * (len + width);
  print("The perimeter is $perimeter");
}

int getArea(int len, int width) {
  int area = len * width;
  return area;
}

/**
 * 화살표 함수로도 정의할 수 있다.
 */
int getAreaArrow(int len, int width) => len * width;

/**
 * Required & Optional parameters
 */
void printCities(String name1, String name2, [String? name3]) {
  print("Name1: $name1");
  print("Name2: $name2");
  print("Name3: $name3");
}

/**
 * Named & Default parameter
 * {} 로 묶은 param들은 nullability를 명시해야 한다.
 * - required를 붙이거나
 * - default 값을 설정하거나
 * - optional함을 명시하거나
 */
int findVolume(int len, {required int width, int height = 10, bool? option}) {
  return len * width * height;
}
