import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    print('object');
  });

  test("User Login Fail Test", () {
    const isUserLogin = true;
    expect(isUserLogin, isTrue);
  });

  group("User Login Full Test", () {
    //MARK: test1
    test("User Login Fail Test", () {
      const isUserLogin = true;
      expect(isUserLogin, isTrue);
    });

    //MARK: test2
    test("User Login Fail Test", () {
      const isUserLogin = true;
      expect(isUserLogin, isTrue);
    });

    //MARK: test3
    test("User Login Fail Test", () {
      const isUserLogin = true;
      expect(isUserLogin, isTrue);
    });
  });
}
