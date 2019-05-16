
## Codelabs: First Flutter App

[source](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#1)

### Creating an inital flutter app

* core of app code resides at `./lib/main.dart`

> * creates a material app
>
> * main method uses arrow (=>) notation, used for one-line functions
>
> * app extends StatelessWidget, making app itself a widget
>
> * in flutter, almost everything is a widget, including alignment, padding, and layout
>
> * Scaffold widget, provides a default app bar, a title, and a body property that holds the widget tree for the home screen


* `flutter format <filename>`

---

### Use an external package

* can find opensource flutter packages at [pub.dev](https://pub.dev/flutter)

* use external package [english_words](https://pub.dartlang.org/packages/english_words) providing few thousands of most used english language words with some utility functions

* to add an external packages add something like `pubspec.yaml` file

```
dependencies:
  english_words: ^3.1.5
```

* to fetch `flutter packages get`

* following changes to MaterialApp for random word as body

```
+    final wordPair = WordPair.random();
     return MaterialApp(

-          title: const Text('Fluttr-ing'),
+          title: Text('Fluttr-ing'),

-        body: const Center(
-          child: const Text('Hey Flocks'),
+        body: Center(
+          child: Text(wordPair.asPascalCase),
```

---

### Add a Stateful Widget

* stateless widgets are immutable

* stateful widgets require 2 classes; `StatefulWidget` class to create an instance of `State` class

* here we'll add a stateful widget `RandomWords` with state class as `RandomWordsState`

> * `State<RandomWords>` indicates use of generic [State](https://docs.flutter.io/flutter/widgets/State-class.html) class specialized for `RandomWords` state.
>
> * `RandomWordsState` needs a build method to generate the data


---
