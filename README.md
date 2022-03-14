A Flutter plugin for iOS and Android for generating signin buttons for different social media account.

> Feedback and Pull Requests are most welcome!

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  flutter_signin_button: ^2.0.0
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

// with custom text
SignInButton(
  Buttons.Google,
  text: "Sign up with Google",
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
  text: 'Sign in with Email',
  icon: Icons.email,
  onPressed: () {},
  backgroundColor: Colors.blueGrey.shade700,
)
```

### Built-in Buttons contain

```dart
enum Buttons {
  Email,
  Google,
  GoogleDark,
  Facebook,
  FacebookNew,
  GitHub,
  Apple,
  AppleDark,
  LinkedIn,
  Pinterest,
  Tumblr,
  Twitter,
  Reddit,
  Quora,
  Yahoo,
  Hotmail,
  Xbox,
  Microsoft,
}
```

<img src="https://github.com/ZaynJarvis/Flutter-Sign-in-Button/raw/master/showcase.png" width="300">

**Refer to example folder and the source code for more information.**
