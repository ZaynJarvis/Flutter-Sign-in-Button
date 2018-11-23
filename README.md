A Flutter plugin for iOS and Android for generating signin buttons for different social media account.

Feedback welcome and Pull Requests are most welcome!

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  flutter_signin_button: ^0.2.1
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
