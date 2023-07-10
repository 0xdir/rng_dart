import 'techniques/byte_filled.dart';

/// The main object
///
/// Comprises techniques to generate large random numbers (BigInt).
///
/// For more information on each technique, view the in-line docs in /src.
class Rng {
  /// Technique: Byte filled
  ///
  /// Fills a list of bytes with random values from 0 to 255, for a
  /// specified bit length
  BigInt getByteFilledBigInt({required int bitLength}) {
    return byteFilled(bitLength: bitLength);
  }
}
