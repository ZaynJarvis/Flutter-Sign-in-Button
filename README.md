A Flutter plugin for iOS and Android for generating signin buttons for different social media account.

[![](https://flutter.zaynjarvis.com/version/flutter_signin_button)](https://pub.dartlang.org/packages/flutter_signin_button)
[![](https://flutter.zaynjarvis.com/score/flutter_signin_button)](https://pub.dartlang.org/packages/flutter_signin_button)

> Pub version and score badges are created from a third party tool. Go for instruction [here](https://github.com/ZaynJarvis/Flutter-Badge)

> Feedback welcome and Pull Requests are most welcome!

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  flutter_signin_button: ^0.2.7
```

## Usage Example

import flutter_signin_button.dart

```dart
import 'package:flutter_signin_button/flutter_signin_button.dart';
```

### For built-in buttons.

```dart
SignInButton(
  Buttons.Google,
  onPressed: () {},
)
```

### For mini buttons.

```dart
SignInButton(
  Buttons.Facebook,
  mini: true,
  onPressed: () {},
)
```

### For self-build buttons.

```dart
SignInButtonBuilder(
  title: 'Email',
  icon: Icons.email,
  onPressed: () {},
  backgroundColor: Colors.blueGrey[700],
)
```

### Built-in Buttons contain

```dart
enum Buttons {
  Email,
  Google,
  Facebook,
  GitHub,
  LinkedIn,
  Pinterest,
  Tumblr,
}
```

<img src="https://i.pinimg.com/564x/64/2e/a4/642ea46654d3b0dff12bebafe288ba89.jpg" width="300">

**Refer to example folder and the source code for more information.**
