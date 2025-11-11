# 🌤️ Flutter Weather App (Cuacaapp)

A modern, real-time weather application built with Flutter and OpenWeatherMap API. Features a beautiful dark UI with glassmorphism design and cross-platform support.

## ✨ Features

- 🔍 **Real-time Weather Search** - Search weather for any city in Bali
- 🌡️ **Temperature Display** - Large, easy-to-read temperature display
- 💧 **Weather Details** - Humidity, wind speed, and pressure information
- 🎨 **Modern UI** - Dark theme with glassmorphism glass effect cards
- 📱 **Cross-Platform** - Works on iOS, Android, Web, Windows, Linux, and macOS
- 🚀 **Automated Deployment** - GitHub Actions CI/CD pipeline
- 📦 **Production Ready** - Fully tested and documented

## 🚀 Quick Start

### Prerequisites
- Flutter 3.x
- Dart 3.x
- Device or emulator

### Installation

```bash
# Clone the repository
git clone https://github.com/sugikne/Cuacaapp.git
cd flutter_application_1

# Get dependencies
flutter pub get

# Run the app
flutter run
```

## 📸 Screenshots

### Main Screen
```
┌─────────────────────────┐
│ 🌤️ Weather in Bali 🌤️  │
├─────────────────────────┤
│ [Search Bar]            │
│ 📍 DENPASAR             │
│ PARTLY CLOUDY           │
│ 28.5°                   │
│ Feels like 29.2°        │
│ ┌───────────────────┐   │
│ │ 💧65% 🌬️4.5m ⚡  │   │
│ └───────────────────┘   │
└─────────────────────────┘
```

## 🏗️ Tech Stack

- **Framework**: Flutter 3.x
- **Language**: Dart 3.x
- **API**: OpenWeatherMap API
- **HTTP**: http ^1.1.0
- **Design**: Material Design 3 + Glassmorphism
- **CI/CD**: GitHub Actions

## 📚 Documentation

Comprehensive documentation available:

- [**GETTING_STARTED.md**](GETTING_STARTED.md) - Quick start guide
- [**DESIGN.md**](DESIGN.md) - UI/UX design details
- [**VISUAL_GUIDE.md**](VISUAL_GUIDE.md) - Screen layouts and mockups
- [**APP_INFO.md**](APP_INFO.md) - Complete application guide
- [**CI_CD_GUIDE.md**](CI_CD_GUIDE.md) - GitHub Actions setup
- [**DEPLOYMENT.md**](DEPLOYMENT.md) - Deployment instructions

## 🌐 Live Web Demo

The app is deployed to GitHub Pages. Access it here:

```
https://sugikne.github.io/Cuacaapp/
```

[![Live Demo](https://img.shields.io/badge/Live%20Demo-View-blue?style=flat)](https://sugikne.github.io/Cuacaapp/)

View the main UI source: [lib/main.dart](https://github.com/sugikne/Cuacaapp/blob/main/lib/main.dart)

## 🔄 GitHub Actions CI/CD

Automated workflows for:
- ✅ Building & testing on every push
- ✅ Generating APK for Android
- ✅ Building web application
- ✅ Auto-deploying web to GitHub Pages
- ✅ Creating releases with APK uploads

See [CI_CD_GUIDE.md](CI_CD_GUIDE.md) for details.

## 📦 Download

### Latest Release
- Download APK: [GitHub Releases](https://github.com/sugikne/Cuacaapp/releases)
- Web App: [GitHub Pages](https://sugikne.github.io/Cuacaapp/)

### Build Locally

```bash
# Android APK
flutter build apk --release
# Output: build/app/outputs/flutter-app.apk

# iOS
flutter build ios --release

# Web
flutter build web --release

# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release
```

## 🔑 API Key

The app uses OpenWeatherMap API:
- **Current Key**: `0675cb7c54abc0c566bb8a3d69ab5ccc` (demo)
- **Get Your Own**: https://openweathermap.org/api

For production, use environment variables or Firebase Secrets.

## 🎯 Usage

1. **Search Weather**: Type city name in search bar and press Enter
2. **View Details**: See temperature, weather condition, humidity, wind, and pressure
3. **Different Cities**: Search any city in Bali (Ubud, Gianyar, Denpasar, etc.)

## 🛠️ Development

### Project Structure
```
lib/
├── main.dart                 # Main application
android/                      # Android platform files
ios/                          # iOS platform files
web/                          # Web platform files
windows/                      # Windows platform files
linux/                        # Linux platform files
macos/                        # macOS platform files
.github/workflows/            # GitHub Actions workflows
```

### Code Analysis & Testing
```bash
# Analyze code
flutter analyze

# Run tests
flutter test

# Format code
dart format lib/
```

## 🐛 Troubleshooting

### "http package not found"
```bash
flutter pub get
```

### Build errors
```bash
flutter clean
flutter pub get
flutter run
```

### API issues
- Check internet connection
- Verify API key is valid
- Check city name spelling

See [DEPLOYMENT.md](DEPLOYMENT.md#-troubleshooting) for more.

## 📋 Future Enhancements

- [ ] 7-day forecast
- [ ] Multiple city support
- [ ] Weather alerts
- [ ] Offline mode with caching
- [ ] GPS location support
- [ ] Push notifications
- [ ] Dark mode settings

## 📄 License

MIT License - Feel free to use and modify

## 🤝 Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

## 📞 Contact & Support

- **GitHub**: https://github.com/sugikne
- **Issues**: https://github.com/sugikne/Cuacaapp/issues
- **Repository**: https://github.com/sugikne/Cuacaapp

## 📊 Project Status

- ✅ Development: Complete
- ✅ Testing: Passed
- ✅ Documentation: Comprehensive
- ✅ Deployment: Automated
- ✅ Production Ready: Yes

---

**Version**: 1.0.0
**Last Updated**: November 11, 2025
**Status**: ✅ Production Ready
