import 'package:rng/rng.dart';
import 'package:test/test.dart';

void main() {
  test('Should generate BigInt ', () {
    Rng rng = Rng();
    BigInt number = rng.getByteFilledBigInt(bitLength: 512);
    expect(number.runtimeType, BigInt.zero.runtimeType);
  });
}
