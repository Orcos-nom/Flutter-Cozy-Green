# Flutter Cozy Green

Flutter Cozy Green is a mobile application designed to provide users with an eco-friendly experience. Built using Flutter, the app offers a seamless UI, incorporating a beautiful green-themed interface that aligns with sustainability values.

## Features

- **Home Page:**
  - A welcoming homepage that introduces users to the app.
  - Custom UI components with a green theme.
- **Custom Font:**
  - Integrated a custom font for enhanced readability and a unique user experience.
- **Navigation:**
  - Easy-to-use navigation with routes defined for different screens.

## Technologies Used

- **Flutter:** A powerful UI framework for building cross-platform applications.
- **Dart:** Programming language used for Flutter development.
- **Custom Fonts:** Integrated through the `pubspec.yaml` file.
- **Material Design:** Applied for a consistent look and feel.

## Installation Guide

Follow the steps below to set up the project on your local machine:

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/yourusername/flutter-cozy-green.git
   cd flutter-cozy-green
   ```

2. **Install Dependencies:**

   ```sh
   flutter pub get
   ```

3. **Run the App:**

   ```sh
   flutter run
   ```

## Prerequisites

Ensure you have the following installed on your system:

- Flutter SDK ([Download Flutter](https://flutter.dev/docs/get-started/install))
- Dart SDK (comes with Flutter installation)
- Android Studio or Visual Studio Code with Flutter extensions
- Git for version control ([Download Git](https://git-scm.com/downloads))

## Project Structure

```
flutter-cozy-green/
├── lib/
│   ├── main.dart          # Entry point of the app
│   ├── home_page.dart     # Main home page screen
│   └── widgets/           # Custom UI components
├── assets/
│   └── fonts/             # Custom font files
├── pubspec.yaml           # Project dependencies
└── README.md              # Project documentation
```

## Custom Font Integration

The app uses a custom font to enhance its aesthetics. The font is added by:

1. Placing the font files inside the `assets/fonts/` directory.
2. Updating the `pubspec.yaml` file:
   ```yaml
   fonts:
     - family: Comic
       fonts:
         - asset: assets/fonts/Comic.ttf
   ```

## Troubleshooting

- If the app does not run, ensure all dependencies are installed correctly using `flutter doctor`.
- Ensure your device/emulator is connected properly.

## Contribution

Contributions are welcome! Follow these steps to contribute:

1. Fork the repository.
2. Create a new feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.

## License

This project is licensed under the MIT License.

## Contact

For any inquiries or issues, feel free to reach out via:

- GitHub Issues: [Create an Issue](https://github.com/Orcos-nom/flutter-cozy-green/issues)



