# 🌤️ Flutter Weather App - Dokumentasi Lengkap

## 📋 Ringkasan Aplikasi

Aplikasi Flutter cuaca real-time yang menampilkan informasi cuaca terkini untuk kota-kota di Bali menggunakan OpenWeatherMap API.

---

## 🎯 Fitur Utama

### 1. **Search Lokasi** 🔍
- Cari cuaca untuk kota manapun di Bali
- Real-time search dengan submit button
- User-friendly interface

### 2. **Tampilan Cuaca** 🌤️
- **Nama Lokasi**: Menampilkan nama kota
- **Kondisi**: Deskripsi cuaca (Sunny, Rainy, Cloudy, dll)
- **Suhu Saat Ini**: Display besar 120px
- **Feels Like**: Suhu yang terasa
- **Informasi Detail**: Humidity, Wind Speed, Pressure

### 3. **Design Modern** 🎨
- Dark theme dengan gradient background
- Glassmorphism effect untuk info card
- Backdrop filter blur untuk efek depth
- Responsive design untuk semua platform

### 4. **Error Handling** ⚠️
- Validasi input search
- Pesan error jika kota tidak ditemukan
- Network error handling
- Loading indicator

---

## 📱 Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| Android | ✅ Supported | Ready to deploy |
| iOS | ✅ Supported | Ready to deploy |
| Web | ✅ Supported | Chrome, Firefox, Safari |
| Windows | ✅ Supported | Desktop app |
| macOS | ✅ Supported | Desktop app |
| Linux | ✅ Supported | Desktop app |

---

## 🛠️ Tech Stack

```
Framework:       Flutter 3.x
Language:        Dart 3.x
State Management: setState (StatefulWidget)
HTTP Client:     http ^1.1.0
API:             OpenWeatherMap API
Design:          Material Design 3 + Custom
```

---

## 📁 Project Structure

```
flutter_application_1/
├── lib/
│   └── main.dart                 # Main application file
├── pubspec.yaml                  # Dependencies configuration
├── analysis_options.yaml         # Lint rules
├── README.md                     # Original documentation
├── PREVIEW.md                    # Application overview
├── DESIGN.md                     # UI/UX design details
├── SCREENSHOTS.md                # Visual previews
├── android/                      # Android configuration
├── ios/                          # iOS configuration
├── web/                          # Web configuration
├── windows/                      # Windows configuration
├── linux/                        # Linux configuration
├── macos/                        # macOS configuration
└── test/                         # Test files
```

---

## 🚀 Cara Menjalankan

### Prerequisite
```bash
# Install Flutter SDK
# Install Dart SDK
# Have Android Studio / Xcode / Visual Studio installed
```

### Installation Steps

```bash
# 1. Clone repository
git clone https://github.com/sugikne/Cuacaapp.git
cd flutter_application_1

# 2. Get dependencies
flutter pub get

# 3. Run aplikasi
flutter run

# Untuk platform spesifik:
flutter run -d chrome       # Web
flutter run -d windows      # Windows Desktop
flutter run -d linux        # Linux Desktop
flutter run -d macos        # macOS Desktop
flutter run -d <device-id>  # Specific device
```

---

## 📡 API Integration

### OpenWeatherMap API

**Endpoint**: `https://api.openweathermap.org/data/2.5/weather`

**Parameters**:
- `q`: Query lokasi (format: "city,region,country")
- `appid`: API Key
- `units`: metric (untuk Celsius) | imperial (untuk Fahrenheit)

**Response Structure**:
```json
{
  "name": "Denpasar",
  "main": {
    "temp": 28.5,
    "feels_like": 29.2,
    "humidity": 65,
    "pressure": 1013
  },
  "weather": [
    {
      "description": "partly cloudy"
    }
  ],
  "wind": {
    "speed": 4.5
  }
}
```

**API Key dalam Project**:
```dart
final String apiKey = '0675cb7c54abc0c566bb8a3d69ab5ccc';
```

> ⚠️ **Catatan**: Untuk production, gunakan environment variables atau secure storage

---

## 🎨 UI/UX Details

### Layout
- **AppBar**: Transparent dengan title "Weather in Bali"
- **Search**: TextField dengan border radius 20, fill color white 15%
- **Weather Display**: Temperature 120px (Light weight)
- **Info Card**: Glass morphism dengan border radius 30

### Colors
```
Primary Background:   #2E335A (Biru Gelap)
Secondary Background: #1C1B33 (Ungu Gelap)
Primary Text:         #FFFFFF (White)
Secondary Text:       #B3B3B3 (White 70%)
Tertiary Text:        #8A8A8A (White 54%)
```

### Typography
```
Font Family: SF Pro Display
Sizes:       12, 14, 16, 18, 38, 120
Weights:     w200 (Light), w500 (Medium), w600 (Bold)
```

---

## 🔧 Customization

### Mengubah Default City
```dart
// Di _WeatherPageState
String cityName = 'Denpasar';  // Ubah ke kota lain
```

### Mengubah API Key
```dart
final String apiKey = 'YOUR_NEW_API_KEY';
```

### Mengubah Warna
```dart
// Di Container gradient
LinearGradient(
  colors: [Color(0xFF123456), Color(0xFF789ABC)],
)
```

### Mengubah Font
```dart
// Di pubspec.yaml
fonts:
  - family: CustomFont
    fonts:
      - asset: assets/fonts/custom.ttf
```

---

## 📊 Code Structure

### Main Classes

```dart
WeatherApp (StatelessWidget)
  ├── build(): Menampilkan MaterialApp
  └── theme: Material Design 3

WeatherPage (StatefulWidget)
  ├── createState(): Membuat _WeatherPageState
  └── State: _WeatherPageState

_WeatherPageState (State)
  ├── weatherData: Map dengan data cuaca
  ├── fetchWeather(String city): Fetch dari API
  ├── build(): Menampilkan UI
  ├── _buildInfoTile(): Widget info
  └── _divider(): Divider widget
```

### Key Methods

```dart
// Fetch weather data dari API
Future<void> fetchWeather(String city) async {
  try {
    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$city,bali,id&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        weatherData = data;
      });
    }
  } catch (e) {
    // Handle error
  }
}
```

---

## ✨ Features Explanation

### 1. Real-time Data Fetching
- Menggunakan `http.get()` untuk API call
- JSON parsing dengan `json.decode()`
- Async/await untuk non-blocking operation

### 2. State Management
- Menggunakan `setState()` untuk update UI
- weatherData variable untuk menyimpan data
- Loading state ketika data null

### 3. Error Handling
- Try-catch untuk handle exception
- SnackBar untuk error notification
- Validasi HTTP response code

### 4. UI Interactivity
- TextField untuk user input
- onSubmitted callback untuk search
- CircularProgressIndicator untuk loading
- Responsive layout dengan Column & Row

---

## 🐛 Troubleshooting

### Error: "Target of URI doesn't exist"
```
Solution: Run `flutter pub get` untuk download dependencies
```

### Error: "API Key Invalid"
```
Solution: Dapatkan API key baru di https://openweathermap.org/api
```

### Error: "City not found"
```
Solution: Gunakan nama kota yang benar atau kota di Bali
```

### App crashes saat search
```
Solution: Pastikan internet connection aktif
```

---

## 📚 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  http: ^1.1.0          # Untuk HTTP requests

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

---

## 🔐 Security Considerations

1. **API Key Protection**
   - Jangan expose API key di public repository
   - Gunakan environment variables atau Firebase Secrets

2. **Data Validation**
   - Validate user input sebelum API call
   - Check response code sebelum processing

3. **HTTPS Only**
   - API endpoint menggunakan HTTPS
   - Aman untuk production

---

## 📈 Performance Tips

1. **Caching**
   - Implement local caching untuk weather data
   - Reduce API calls

2. **Image Optimization**
   - Gunakan compressed images
   - LazyLoad jika ada multiple images

3. **Code Splitting**
   - Separate UI components
   - Reduce build size

---

## 🚀 Deployment

### Android Release Build
```bash
flutter build apk --release
# Output: build/app/outputs/flutter-app.apk
```

### iOS Release Build
```bash
flutter build ios --release
# Need Xcode dan Apple Developer Account
```

### Web Deployment
```bash
flutter build web
# Upload ke hosting (Firebase, Netlify, dll)
```

### Windows/Linux/macOS
```bash
flutter build windows
flutter build linux
flutter build macos
```

---

## 📞 Support & Contact

- **GitHub Repository**: https://github.com/sugikne/Cuacaapp
- **Developer**: sugikne
- **OpenWeatherMap API**: https://openweathermap.org/api

---

## 📄 Documentation Files

Dalam repository ini tersedia:

1. **README.md** - Original Flutter project README
2. **PREVIEW.md** - Application overview dan features
3. **DESIGN.md** - Detailed UI/UX design documentation
4. **SCREENSHOTS.md** - Visual previews dengan ASCII art
5. **APP_INFO.md** - File ini, dokumentasi lengkap

---

## 🎓 Learning Resources

- [Flutter Official Documentation](https://flutter.dev/docs)
- [Dart Language Guide](https://dart.dev/guides)
- [Material Design Guidelines](https://material.io/design)
- [OpenWeatherMap API Docs](https://openweathermap.org/api)

---

## ✅ Checklist

- ✅ Flutter project setup
- ✅ HTTP package integration
- ✅ API integration dengan OpenWeatherMap
- ✅ UI dengan Material Design 3
- ✅ Error handling
- ✅ Loading states
- ✅ Search functionality
- ✅ Responsive design
- ✅ Git version control
- ✅ GitHub repository
- ✅ Comprehensive documentation

---

## 📅 Changelog

### Version 1.0.0 (November 11, 2025)
- Initial release
- Weather search functionality
- Display weather information
- Dark theme UI
- Multi-platform support

---

## 📝 License

MIT License - Feel free to use and modify for your projects

---

**Last Updated**: November 11, 2025
**Project Status**: ✅ Active & Ready for Deployment
