# Cat Facts with Flutter BLoC

This is just a simple app that fetchs the data from cat-facts API.

## API links
[document link](https://alexwohlbruck.github.io/cat-facts/docs/)

[json file link](https://cat-fact.herokuapp.com/facts/)

## Cat Facts UI (world's disgusting ui ever)

<img src="images/ui.png" width = "400">

## BLoC Pattern

Main point here is not a UI. Main pont is using BLoC pattern as State Management in Flutter.

Import according packages as dependencies (versions can change in the future. Go to check in [pub.dev](https://pub.dev/))

```dart 
dependencies:

  http: ^0.12.0+4
  get_it: ^4.0.1
  equatable: ^1.1.1
  flutter_bloc: ^4.0.0
```

## BLoC Diagram 
UI sends events to bloc and bloc is trying to get data from the repository with this event information. 

Repository goes to ApiClient class to fetch the data. ApiClient class is not necessary in small apps. However it helps to handle each job seperetaly in medium size or big apps. 

When Repository class fetch the data from ApiClient class ,sends it to bloc. Bloc choose the state that has to return and return this state with this data.

<img src="images/cat_appDiagram.PNG" width = "400">




