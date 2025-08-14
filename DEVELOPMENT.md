# Development Guide

This document provides comprehensive guidelines for developing and contributing to the Flutter Sign-in Button package.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (latest stable version)
- **Dart SDK** (>= 2.12.0)
- **Android Studio** or **IntelliJ IDEA** (for Android development)
- **Xcode** (for iOS development, macOS only)
- **Git** (for version control)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/ZaynJarvis/Flutter-Sign-in-Button.git
cd Flutter-Sign-in-Button
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Verify Installation

```bash
flutter doctor
```

Ensure all checks pass before proceeding.

## Project Structure

```
Flutter-Sign-in-Button/
├── lib/                        # Main package source code
│   ├── flutter_signin_button.dart  # Main entry point
│   ├── button_builder.dart     # Custom button builder
│   ├── button_list.dart        # Predefined button types
│   └── button_view.dart        # Button view implementation
├── example/                    # Example application
│   ├── lib/main.dart          # Example app main file
│   └── pubspec.yaml           # Example dependencies
├── assets/                     # Button logos and assets
│   └── logos/                 # Brand logos (1x, 2x, 3x)
├── android/                    # Android-specific files
├── ios/                        # iOS-specific files
├── pubspec.yaml               # Package configuration
├── CHANGELOG.md               # Version history
└── README.md                  # Package documentation
```

## Development Workflow

### Running the Example

To test your changes, run the example application:

```bash
cd example
flutter run
```

### Hot Reload

During development, use hot reload for faster iteration:
- Press `r` in the terminal
- Or use your IDE's hot reload feature

### Code Analysis

Run static analysis to ensure code quality:

```bash
flutter analyze
```

### Formatting

Format your code according to Dart conventions:

```bash
dart format .
```

## Testing

### Running Tests

Execute the test suite:

```bash
flutter test
```

### Writing Tests

- Place test files in the `test/` directory
- Follow the naming convention: `*_test.dart`
- Write unit tests for new functionality
- Include widget tests for UI components

Example test structure:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  group('SignInButton Tests', () {
    testWidgets('renders Google sign-in button', (WidgetTester tester) async {
      // Test implementation
    });
  });
}
```

## Adding New Sign-in Buttons

To add a new social media sign-in button:

### 1. Add Button Type

Edit `lib/button_list.dart`:

```dart
enum Buttons {
  // ... existing buttons
  NewSocialMedia,
}
```

### 2. Add Button Configuration

In the same file, add configuration:

```dart
case Buttons.NewSocialMedia:
  return ButtonStyle(
    iconColor: Colors.white,
    color: Color(0xFF123456), // Brand color
    text: "Sign in with NewSocialMedia",
    fontSize: 14.0,
  );
```

### 3. Add Assets

- Add logo files to `assets/logos/` (1x, 2x, 3x versions)
- Update `pubspec.yaml` to include new assets
- Use PNG format with transparent backgrounds

### 4. Update Documentation

- Add the new button to README.md examples
- Update the enum documentation
- Add entry to CHANGELOG.md

## Code Style Guidelines

### Dart Conventions

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add documentation comments for public APIs
- Keep functions small and focused

### Widget Guidelines

- Use `const` constructors where possible
- Implement proper `key` parameter handling
- Follow Flutter widget composition patterns
- Ensure widgets are responsive

### Example Code Style

```dart
class SignInButton extends StatelessWidget {
  /// Creates a sign-in button for the specified [Buttons] type.
  ///
  /// The [button] parameter specifies which social media button to render.
  /// The [onPressed] callback is required and called when the button is tapped.
  const SignInButton(
    this.button, {
    Key? key,
    required this.onPressed,
    this.mini = false,
    this.text,
    this.elevation = 2.0,
  }) : super(key: key);

  final Buttons button;
  final VoidCallback onPressed;
  final bool mini;
  final String? text;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    // Implementation
  }
}
```

## Publishing Process

### Pre-release Checklist

1. **Version Bump**: Update version in `pubspec.yaml`
2. **Changelog**: Add entries to `CHANGELOG.md`
3. **Documentation**: Update README.md if needed
4. **Testing**: Run full test suite
5. **Analysis**: Ensure `flutter analyze` passes
6. **Example**: Verify example app works

### Publishing Commands

```bash
# Dry run to check package
flutter pub publish --dry-run

# Publish to pub.dev
flutter pub publish
```

### Release Process

1. Create a new branch for the release
2. Make all necessary updates
3. Create a pull request
4. After approval, merge to master
5. Create a git tag for the version
6. Publish to pub.dev

## Contributing Guidelines

### Pull Request Process

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/new-button`
3. **Commit** changes with clear messages
4. **Test** your changes thoroughly
5. **Submit** a pull request with description

### Commit Message Format

Use conventional commit format:

```
type(scope): description

Examples:
feat(buttons): add Instagram sign-in button
fix(ui): correct button alignment issue
docs(readme): update installation instructions
```

### Issue Reporting

When reporting issues:

- Use the provided issue templates
- Include Flutter/Dart versions
- Provide minimal reproduction code
- Add screenshots for UI issues

## Troubleshooting

### Common Issues

**Asset Loading Problems:**
- Ensure assets are properly declared in `pubspec.yaml`
- Check file paths and names
- Rebuild after adding new assets

**Button Styling Issues:**
- Verify brand color codes
- Check icon sizes and positioning
- Test on different screen densities

**Build Errors:**
- Run `flutter clean` and `flutter pub get`
- Check Flutter and Dart versions
- Verify all dependencies are compatible

### Getting Help

- Check existing [GitHub Issues](https://github.com/ZaynJarvis/Flutter-Sign-in-Button/issues)
- Review the [README.md](README.md) documentation
- Look at the [example](example/) implementation
- Ask questions in the project discussions

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Guide](https://dart.dev/guides/language)
- [Pub.dev Publishing Guide](https://dart.dev/tools/pub/publishing)
- [Flutter Widget Guidelines](https://flutter.dev/docs/development/ui/widgets-intro)

---

Thank you for contributing to Flutter Sign-in Button! 🚀