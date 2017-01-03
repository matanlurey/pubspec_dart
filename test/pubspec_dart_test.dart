// Copyright (c) 2017, pubspec_dart authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
import 'dart:io';

import 'package:pubspec_dart/src/pubspec.dart' deferred as pubspec;

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    final output = p.join(p.current, 'lib', 'src', 'pubspec.dart');
    final file = new File(output);
    if (file.existsSync()) {
      file.deleteSync();
    }
    Process.runSync('dart', [p.join('bin', 'build.dart')]);
    await pubspec.loadLibrary();
  });

  test('should have inlined the pubspec version', () {
    expect(pubspec.name, 'pubspec_dart');
    expect(pubspec.version, '0.1.0');
  });
}
