import 'dart:math';
import 'dart:typed_data';

import '../utils/byte_decoder.dart';

/// Technique: Byte filled
///
/// Fills a list of bytes with random values from 0 to 255
///
/// Provide the required bit length in multiples of 8.
/// eg. 8, 16, 32, 64, 128, 256, 512, ...
///
/// Quantizes to nearest multiple of 8 if alternative bitlengths
/// are provided.
BigInt byteFilled({required int bitLength}) {
  final random = Random();
  final builder = BytesBuilder();

  /// Quantize to nearest 8-bits
  if (bitLength < 8) {
    bitLength = 8;
  }

  /// Add a byte with a random value from 0 to 255 until the required
  /// bytes are filled
  for (var i = 0; i < bitLength ~/ 8; i++) {
    builder.addByte(random.nextInt(255));
  }

  /// Decode the bytes into a BigInt
  return decodeBytesToBigInt(builder.toBytes());
}
