# 🎨 UI/UX Design Documentation

## Tampilan Aplikasi Detail

### Screen Layout

```
┌───────────────────────────────────────────┐
│  ⌚ [Status Bar]                           │
├───────────────────────────────────────────┤
│                                            │
│  ┌─── App Bar ───────────────────────────┐ │
│  │  Weather in Bali                       │ │
│  └────────────────────────────────────────┘ │
│                                            │
│  [🌌 Gradient Background with Blur]       │
│                                            │
│  ╔════════════════════════════════════╗   │
│  ║  🔍 [Search TextField]              ║   │
│  ║  Cari kota di Bali...               ║   │
│  ╚════════════════════════════════════╝   │
│                                            │
│  📍 Denpasar                               │
│  Partly Cloudy                             │
│                                            │
│     28.5°                                  │
│     (Large Display Temperature)            │
│                                            │
│  Feels like 29.2°                          │
│                                            │
│  ╔════════════════════════════════════╗   │
│  ║  💧 65%    │ 🌬️ 4.5m/s │ ⚡ 1013hPa   ║   │
│  ║  Humidity  │  Wind    │  Pressure  ║   │
│  ╚════════════════════════════════════╝   │
│                                            │
│                                            │
│  [Scrollable Area]                         │
│                                            │
│                                            │
└───────────────────────────────────────────┘
```

---

## 🎨 Widget Hierarchy

```
Scaffold
├── extendBodyBehindAppBar: true
├── backgroundColor: transparent
├── AppBar
│   └── Title: "Weather in Bali"
│
└── body: Stack
    ├── Container (Gradient Background)
    │   └── decoration: LinearGradient
    │       ├── begin: topCenter
    │       ├── end: bottomCenter
    │       └── colors: [#2E335A, #1C1B33]
    │
    ├── Positioned.fill (Blur Effect)
    │   └── BackdropFilter
    │       └── ImageFilter.blur(20, 20)
    │
    └── Padding (Main Content)
        └── Column
            ├── TextField (Search)
            ├── SizedBox(40)
            ├── Text (City Name)
            ├── Text (Weather Description)
            ├── SizedBox(60)
            ├── Text (Temperature)
            ├── Text (Feels Like)
            ├── SizedBox(70)
            └── ClipRRect (Info Card)
                └── BackdropFilter
                    └── Container (Glass)
                        └── Row
                            ├── InfoTile (Humidity)
                            ├── Divider
                            ├── InfoTile (Wind)
                            ├── Divider
                            └── InfoTile (Pressure)
```

---

## 🎯 Component Breakdown

### 1. App Bar
```dart
AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: Text(
    "Weather in Bali",
    style: TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w500
    ),
  ),
  centerTitle: true,
)
```
- **Style**: Transparent dengan text putih 70%
- **Alignment**: Center
- **Font Weight**: Medium (w500)

---

### 2. Search TextField
```dart
TextField(
  controller: _cityController,
  style: TextStyle(color: Colors.white),
  decoration: InputDecoration(
    hintText: 'Cari kota di Bali (Ubud, Gianyar...)',
    hintStyle: TextStyle(color: Colors.white54),
    prefixIcon: Icon(Icons.search, color: Colors.white70),
    filled: true,
    fillColor: Colors.white.withOpacity(0.15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
  ),
)
```
- **Fill Color**: White dengan opacity 15%
- **Border Radius**: 20
- **Prefix Icon**: Search icon

---

### 3. Temperature Display
```dart
Text(
  '${(weatherData!['main']['temp'] as num).toStringAsFixed(1)}°',
  style: TextStyle(
    fontSize: 120,
    fontWeight: FontWeight.w200,
    color: Colors.white,
  ),
)
```
- **Font Size**: 120
- **Font Weight**: Light (w200)
- **Format**: 1 decimal place (e.g., 28.5°)

---

### 4. Weather Info Card (Glass Morphism)
```dart
ClipRRect(
  borderRadius: BorderRadius.circular(30),
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white30, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [/* info tiles */],
      ),
    ),
  ),
)
```
- **Backdrop Filter**: Blur 15x15
- **Background**: White 10% opacity
- **Border**: White 30% opacity
- **Border Radius**: 30
- **Padding**: 24 vertical, 16 horizontal

---

### 5. Info Tile Component
```dart
Column(
  children: [
    Icon(icon, color: Colors.white, size: 28),
    SizedBox(height: 6),
    Text(
      value,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    Text(
      label,
      style: TextStyle(color: Colors.white70, fontSize: 14),
    ),
  ],
)
```
- **Icon Size**: 28
- **Value Font Size**: 18, Bold (w500)
- **Label Font Size**: 14, Light (w70%)

---

## 🎨 Responsive Design

### Padding & Spacing
```
Horizontal Padding: 24
Vertical Padding: 100

Spacing between elements:
- Search to Weather Info: 40
- Weather Info to Temperature: 60
- Temperature to Card: 70
```

### Font Sizes
| Element | Size | Weight |
|---------|------|--------|
| City Name | 38 | w600 |
| Description | 16 | Normal |
| Temperature | 120 | w200 |
| Feels Like | 18 | Normal |
| Info Value | 18 | w500 |
| Info Label | 14 | Normal |

---

## 🌈 Color Scheme

### Background Gradient
```dart
LinearGradient(
  colors: [
    Color(0xFF2E335A),  // Top - Biru Gelap
    Color(0xFF1C1B33),  // Bottom - Ungu Gelap
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
)
```

### Opacity Levels
- **White 100%**: `Colors.white` - Text utama
- **White 70%**: `Colors.white70` - Label, hint
- **White 54%**: `Colors.white54` - Text tertiary
- **White 30%**: `Colors.white30` - Border
- **White 15%**: `Colors.white.withOpacity(0.15)` - TextField fill
- **White 10%**: `Colors.white.withOpacity(0.1)` - Card background
- **Black 10%**: `Colors.black.withOpacity(0.1)` - Overlay blur

---

## 🎬 Animations & Interactions

### Search Interaction
```
User Type → onSubmitted → fetchWeather()
                        ↓
                    API Call
                        ↓
                    Loading State (CircularProgressIndicator)
                        ↓
                    Success → Display Data
                        ↓
                    Error → Show SnackBar
```

### Loading State
```dart
if (weatherData == null)
  Center(
    child: CircularProgressIndicator(color: Colors.white),
  )
```

### Error Handling
```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('Kota "$city" tidak ditemukan.')),
)
```

---

## 📱 Screen States

### State 1: Loading
```
[Search Bar]
⏳ Loading...
```

### State 2: Success
```
[Search Bar]
📍 Denpasar
Partly Cloudy
28.5°
Feels like 29.2°
[Weather Info Card]
```

### State 3: Error
```
[Search Bar]
[Error SnackBar]
No data displayed
```

---

## 🎨 Visual Hierarchy

1. **Top Priority**: Temperature (Large, 120px)
2. **High Priority**: City Name (38px)
3. **Medium Priority**: Weather Description (16px)
4. **Secondary**: Weather Details Card
5. **Tertiary**: Labels & Icons

---

## ✨ Special Effects

### Glassmorphism
- Semi-transparent background dengan blur
- Border dengan opacity rendah
- Menciptakan efek "frosted glass"

### Gradient Background
- Linear gradient dari biru ke ungu gelap
- Menciptakan suasana malam/sore yang elegan

### Backdrop Filter
- Blur effect pada background
- Membuat content di atas lebih readable

---

## 🎯 UX Principles Applied

✅ **Clear Hierarchy**: Temperature adalah fokus utama
✅ **Minimal Design**: Hanya informasi penting yang ditampilkan
✅ **Good Contrast**: Text putih di background gelap
✅ **Intuitive Navigation**: Search bar di atas, data di bawah
✅ **Feedback**: Loading indicator & error messages
✅ **Accessibility**: Icon + text untuk clarity
✅ **Consistency**: Design language yang konsisten
✅ **Responsiveness**: Padding & spacing yang adaptive

---

## 🔧 Customization Tips

### Mengubah Warna:
```dart
// Ubah gradient colors
LinearGradient(
  colors: [Color(0xFFXXXXXX), Color(0xFFYYYYYY)],
)

// Ubah opacity
Colors.white.withOpacity(0.XX)
```

### Mengubah Font Size:
```dart
style: TextStyle(fontSize: XX, fontWeight: FontWeight.wXXX)
```

### Mengubah Border Radius:
```dart
borderRadius: BorderRadius.circular(XX)
```

---

**Design Philosophy**: Modern, Clean, Dark Theme dengan Glass Effect
