# pubspec_dart

A simple tool for inlining the package `name` and `version` into Dart code.

## Usage

```bash
$ pub global activate pubspec_dart
$ pub global run pubspec_dart:build
```

By default, generates a `lib/src/pubspec.dart` that looks like:

```dart
// Automatically generated by package:pubspec_dart
// Can be regenerated by running `pub global run pubspec_dart:build

/// Name of this package.
const name = 'pubspec_dart';

/// Version of "package:pubspec_dart".
const version = '0.1.0';
```