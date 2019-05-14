import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:fanhero_native_utils/fanhero_native_utils.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              FanheroNativeUtils.forcePortraitOrientation();
            },
            child: Text('Force Portrait Orientation'),
          ),
        ),
      ),
    );
  }
}
