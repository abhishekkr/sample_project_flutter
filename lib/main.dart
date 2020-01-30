import 'package:flutter/material.dart';
import 'codelabs/first_flutter_app.dart';

void main() => runApp(FluttrApp());

class FluttrApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fluttr',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: RandomWords(),
    );
  }
}
