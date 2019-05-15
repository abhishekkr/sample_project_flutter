import 'package:flutter/material.dart';     // creates a material app

void main() => runApp(MyApp());             // main method uses arrow notation; for one-liner function

class MyApp extends StatelessWidget {       // app extgends StatelessWidget, making the app itself a widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttr',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fluttr-ing'),
        ),
        body: const Center(
          child: const Text('Hey Flocks'),
        ),
      ),
    );
  }
}
