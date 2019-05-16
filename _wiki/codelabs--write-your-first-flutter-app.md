
## Codelabs: First Flutter App

[source/part-1](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#1)

* creating an inital flutter app

* use an external package

* add a stateful widget

* create an infinite scrolling ListView

[source/part-2](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#0)

* add icons to list

* add interactivity

* navigate to new screen

* use UI themes

---

### First Flutter App Part.1

#### Creating an inital flutter app

* create a new flutter app using `flutter new <app_name>`

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

* can run it using `flutter run`

---

#### Use an external package

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

#### Add a Stateful Widget

* stateless widgets are immutable

* stateful widgets require 2 classes; `StatefulWidget` class to create an instance of `State` class

* here we'll add a stateful widget `RandomWords` with state class as `RandomWordsState`

> * `State<RandomWords>` indicates use of generic [State](https://docs.flutter.io/flutter/widgets/State-class.html) class specialized for `RandomWords` state.
>
> * `RandomWordsState` needs a build method to generate the data

---

#### Create an infinite scrolling ListView

* expand `RandomWordsState` to provide a list of word-pairs, growing list inifinitely as user scrolls

* `ListView` widget `builder` factory constructor allows you to build a lazy list

* prefix `underscore` to identifier in Dart enforces privacy

* `_buildSuggestion` uses `ListView` provided `itemBuilder`, a factory builder and callback function specified as an anon function

> * itemBuilder called once per suggested word-pairing
>
> * add one-pixel-high divider widget before each row, every odd row
>
> * as items are half the list rows, `i ~/ 2` divides by 2 returning int in Dart; adding 10 more items everytime current list is over

---

### First Flutter App Part.2

* we'll add more interactivity, route navigation and modify theme

#### Add icons to list

* add `_favorite` Set to RandomWordsState to store favorited word-pairs

* add already favorited check in `_buildRow` by using `contains` on Set

* add a trailing favorite icon by modifying `ListTile` returned by `_buildRow`

---

#### Add interactivity

> WIP

---

#### Navigate to new screen

> WIP

---

#### Use UI themes

> WIP

---
---

