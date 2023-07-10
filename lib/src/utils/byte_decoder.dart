import 'dart:typed_data';

/// Decodes big-endian encoded bytes to BigInt
BigInt decodeBytesToBigInt(Uint8List bytes) {
  BigInt result = BigInt.zero;

  for (final byte in bytes) {
    /// Concat each byte to the result
    result = (result << 8) | BigInt.from(byte & 0xff);
  }
  return result;
}
