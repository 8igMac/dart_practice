import 'package:test/test.dart';
import 'add.dart';

void main() {
  test('Add two number : ', () {
    expect(add(7, 8), 15);
    expect(add(1, 3), 4);
  });
}
