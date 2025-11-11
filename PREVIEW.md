# 🌤️ Flutter Weather App - Preview

## Aplikasi Cuaca Real-time untuk Bali

Aplikasi Flutter yang menampilkan informasi cuaca real-time menggunakan OpenWeatherMap API.

---

## 🎨 Tampilan Aplikasi

### Fitur Utama:

```
┌─────────────────────────────────────┐
│         Weather in Bali              │
├─────────────────────────────────────┤
│                                      │
│  📍 Search Box                       │
│  [Cari kota di Bali...]             │
│                                      │
│  🌥️  DENPASAR                        │
│      PARTLY CLOUDY                   │
│                                      │
│      28.5°                           │
│      Feels like 29.2°                │
│                                      │
│  ┌─────────────────────────────────┐ │
│  │ 💧    🌬️     ⚡                    │ │
│  │ 65%   4.5m/s  1013hPa            │ │
│  │ Humidity Wind  Pressure           │ │
│  └─────────────────────────────────┘ │
│                                      │
└─────────────────────────────────────┘
```

### Design Elements:

- 🎨 **Gradient Background**: Warna biru gelap dengan efek blur
- ❄️ **Backdrop Filter**: Glass morphism effect untuk info card
- 🔍 **Search Bar**: Rounded dengan ikon search
- 📊 **Weather Info**: Tampilan suhu besar dan informasi cuaca
- 📈 **Weather Details**: Humidity, Wind Speed, Pressure dalam card glass

---

## 🛠️ Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **API**: OpenWeatherMap API
- **HTTP Client**: http package ^1.1.0
- **Design Pattern**: Material Design 3

---

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ Linux
- ✅ macOS

---

## 🎯 Fitur Aplikasi

### ✨ Fitur yang Tersedia:

1. **Search Kota**
   - Cari kota di Bali (Ubud, Gianyar, Denpasar, dll)
   - Real-time weather data

2. **Weather Information**
   - Suhu saat ini
   - Kondisi cuaca (deskripsi)
   - "Feels like" temperature
   - Kelembaban (Humidity)
   - Kecepatan angin (Wind Speed)
   - Tekanan udara (Pressure)

3. **UI/UX**
   - Dark theme dengan gradient background
   - Glassmorphism design
   - Loading indicator untuk fetch data
   - Error handling dengan SnackBar
   - Responsive design

---

## 🔧 Cara Menjalankan

### Prerequisite:
- Flutter SDK terinstall
- Dart SDK terinstall
- Device atau emulator

### Steps:

```bash
# 1. Clone repository
git clone https://github.com/sugikne/Cuacaapp.git
cd flutter_application_1

# 2. Get dependencies
flutter pub get

# 3. Run aplikasi
flutter run

# Untuk platform spesifik:
flutter run -d chrome      # Web
flutter run -d windows     # Windows
flutter run -d linux       # Linux
flutter run -d macos       # macOS
```

---

## 📡 API Configuration

Aplikasi menggunakan **OpenWeatherMap API**

**Endpoint**: `https://api.openweathermap.org/data/2.5/weather`

**Parameters**:
- `q`: Nama kota (query)
- `appid`: API Key
- `units`: metric (untuk Celsius)

**Example Request**:
```
https://api.openweathermap.org/data/2.5/weather?q=Denpasar,bali,id&appid=YOUR_API_KEY&units=metric
```

---

## 🔑 API Key

Aplikasi sudah include API key untuk testing:
```dart
final String apiKey = '0675cb7c54abc0c566bb8a3d69ab5ccc';
```

> **Catatan**: Untuk production, gunakan environment variables atau Firebase Secrets

---

## 📝 Kode Utama

### Main Widget Structure:

```dart
WeatherApp (StatelessWidget)
  └── WeatherPage (StatefulWidget)
        └── _WeatherPageState
              ├── fetchWeather(String city) // API call
              ├── build() // UI
              ├── _buildInfoTile() // Weather info card
              └── _divider() // Divider widget
```

### Data Flow:

```
User Input (Search)
    ↓
fetchWeather(city)
    ↓
HTTP GET Request
    ↓
JSON Response
    ↓
setState() → Update UI
    ↓
Display Weather Data
```

---

## 🎨 Color Palette

| Warna | Hex Code | Penggunaan |
|-------|----------|-----------|
| Primary Dark | `#2E335A` | Background atas |
| Secondary Dark | `#1C1B33` | Background bawah |
| White | `#FFFFFF` | Text utama |
| White 70% | `#B3B3B3` | Text secondary |
| White 54% | `#8A8A8A` | Text tertiary |
| White 30% | `#4D4D4D` | Border |

---

## 📊 Weather Data Structure

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

---

## 🚀 Future Enhancements

- [ ] 7-day forecast
- [ ] Multiple city support
- [ ] Weather alerts
- [ ] Offline mode dengan caching
- [ ] Custom API key setting
- [ ] Theme customization
- [ ] Lokasi otomatis (GPS)
- [ ] Push notifications

---

## 📄 License

MIT License - Feel free to use and modify

---

## 👨‍💻 Developer

**sugikne** - Flutter Developer

---

## 🤝 Contributing

Pull requests are welcome! Feel free to submit issues and enhancement requests.

---

## 📧 Contact

- GitHub: https://github.com/sugikne
- Repository: https://github.com/sugikne/Cuacaapp

---

**Last Updated**: November 11, 2025
