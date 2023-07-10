import 'package:rng/rng.dart';

void main() {
  /// Initialize the main object
  Rng rng = Rng();

  /// Get a random BigInt using a particular technique eg. byte-filled
  /// for a specified bit length of 256
  BigInt randomNumber1 = rng.getByteFilledBigInt(bitLength: 256);

  /// Do stuff with the number
  print(randomNumber1);

  /// Get a random BigInt using a particular technique eg. byte-filled
  /// for a specified bit length of 512
  BigInt randomNumber2 = rng.getByteFilledBigInt(bitLength: 512);

  /// Do stuff with the number
  print(randomNumber2);
}
