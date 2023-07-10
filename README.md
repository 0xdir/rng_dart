[![pub package](https://img.shields.io/pub/v/rng.svg)](https://pub.dev/packages/rng)
[![package publisher](https://img.shields.io/pub/publisher/rng.svg)](https://pub.dev/packages/rng/publisher)

A library to generate very large random numbers (BigInt). Includes various generation techniques 
and sources of randomness for easy customization.

This package is designed to have as few dependencies as possible.

## Using

The easiest way to use this library is via the top-level ```Rng``` class.

```dart
import 'package:rng/rng.dart';

void main() {
  /// Initialize the main object
  Rng rng = Rng();

  /// Get a random BigInt using a particular technique eg. byte-filled
  /// for a specified bit length of 256
  /// 
  /// This technique fills a list of bytes with random values from 0 to 255
  /// until the specified bit length is reached.
  ///
  /// This technique accepts bit lengths in multiples of 8.
  /// eg. 8, 16, 32, 64, 128, 256, 512, ...
  ///
  /// And quantizes to nearest multiple of 8-bits if alternative bit lengths are provided.
  BigInt randomNumber1 = rng.getByteFilledBigInt(bitLength: 256);

  /// Do stuff with the number
  print(randomNumber1);
}
```

## Scope of implementation

More techniques to generate very large random numbers (BigInts) and sources of randomness 
will be added over time. 

All requests are welcome, feel free to open a discussion on github.

## Use cases

This library is designed for users who need very large random numbers (BigInts) above 
64-bits in length. 

If you are working with random numbers smaller than 64-bits in length, ie. values less than 2^64-1
the ```dart:math``` library will suit your needs perfectly. 

If you are using this library for cryptography, encryption, or blockchain related applications, 
feel free to reach out if you need assistance on any audits.

## Getting Help

Submit an issue on [github].

[github]: https://github.com/0xdir/rng_dart

## How to contribute

All feedback and suggestions for improvements are welcome:

1. Open a discussion on [github]
2. Discuss proposed changes
3. Submit a PR (optional)

[github]: https://github.com/0xdir/rng_dart

## Support my work

This package is possible thanks to the people and companies
who donate money, services or time to keep the project running.

If you're interested in becoming a Sponsor, Backer or Contributor
to expand the project, reach out to me on [github].

[github]: https://github.com/sponsors/0xdir

Or buy me coffee at `0xdir.near`.