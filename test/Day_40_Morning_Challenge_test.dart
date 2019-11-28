import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(winInTwoMove([[1],[2],[3,4]]), [[1], [2], [3, 4]]);
    expect(winInOneMove([[1],[2],[3,4]]), null);
    expect(winInOneMove([[1],[],[2,3,4]]), [[1], [], [2, 3, 4]]);
    expect(winInTwoMove([[1],[],[2,3,4]]), null);
  });
}
