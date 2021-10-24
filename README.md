# MI2S Dart Language Study Group
[![CI](https://github.com/8igMac/dart_practice/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/8igMac/dart_practice/actions/workflows/ci.yml)

Code collections for MI2S Dart lang study group.

## Get started
- Install [flutter](https://flutter.dev/docs/get-started/install) (which
contains the dart SDK).
- Clone the repo.
- Install the dependency.
```sh
$ cd dart_practice
$ dart pub get
```
- Create your own directory and put your feature code and test code there
(test code should end with `_test.dart`).
- Write feature and test code.
- Run the test and make the test pass.
```sh
# Make sure you are in the project root directory. (i.e dart_practice/)
$ dart test .
```
- Format the code.
```
$ dart format YOUR_DIR/
```
- Push and create a pull request with the issue number.

## Writing dart test
For more detail, see [Writing dart test](https://pub.dev/packages/test).

```dart
// Must import dart test library.
import 'package:test/test.dart';
// Import your feature code.
import 'add.dart';

void main() {
  // Test case 1.
  test('Add positive number.', () {
    expect(add(2, 3), 5);
    expect(add(4, 3), 7);
  });

  // Test case 2.
  test('Add negative number.', () {
    expect(add(-2, 3), 1);
    expect(add(-5, -5), -10);
  });
}
```

## Git style
- Squash all your commits before push.
- Commit message style: `[FEAT] FEATURE_NAME by YOUR_NAME.`, for example: `[FEAT] Quick sort by Eric.`

## Reading resources
- About the language
  - Quick overview: [dart language samples](https://dart.dev/samples).
  - More detailed overview: [dart language tour](https://dart.dev/guides/language/language-tour).
  - Cheatsheet: [Language cheatsheet](https://dart.dev/codelabs/dart-cheatsheet).
- Important concept
  - [Iterable](https://dart.dev/codelabs/iterables)
  - [Null safety](https://dart.dev/codelabs/null-safety)
  - [Async programming](https://dart.dev/codelabs/async-await)
- [Core library tour](https://dart.dev/guides/libraries/library-tour)
