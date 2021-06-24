# flavor_with_flutter

A new Flutter project for Flavor pactice .

- run using terminal
  ```console
    flutter run -t lib/main_dev.dart
    flutter run -t lib/main_prod.dart
    ..........
    ```
<br>

- using VS-code run, cofig [launch.json](.vscode/launch.json) on VScode. 

    -Top Bar `Run > open Configurations>`

  ```json
        ///dev launch
        {
            "name": "Dev Mode",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_dev.dart"
        },

        ///production mode launch
        {
            "name": "Production Mode",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart"
        },
  ```

---

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
