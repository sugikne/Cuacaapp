# 🎬 Tampilan Visual Aplikasi - Panduan Lengkap

## 📱 Demonstrasi Layar Aplikasi

### LAYAR 1: Startup - Denpasar (Default City)

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:30      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Cari kota di Bali (Ubud, Gianyar...)             ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                       📍 DENPASAR                          ║
║                      PARTLY CLOUDY                         ║
║                                                            ║
║                          28.5°                             ║
║                  (Display Suhu Besar)                      ║
║                                                            ║
║                    Feels like 29.2°                        ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃  💧  65%     🌬️  4.5 m/s    ⚡  1013 hPa              ┃  ║
║  ┃  Humidity     Wind Speed     Pressure                ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║              [Scroll untuk informasi lebih]               ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

### LAYAR 2: Searching State - User Mengetik "Ubud"

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:31      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Ubud                                              ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                                                            ║
║                   ⟳ ⟳ ⟳ ⟳                              ║
║                 Memuat Data Cuaca...                       ║
║                   ⟳ ⟳ ⟳ ⟳                              ║
║                                                            ║
║                                                            ║
║                                                            ║
║                                                            ║
║              [Loading state - tunggu API response]         ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

### LAYAR 3: Hasil Search - Ubud Weather

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:32      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Ubud                                              ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                        📍 UBUD                             ║
║                      RAINY WEATHER                         ║
║                                                            ║
║                          26.3°                             ║
║                    (Suhu lebih dingin)                     ║
║                                                            ║
║                    Feels like 24.8°                        ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃  💧  78%     🌬️  6.2 m/s    ⚡  1008 hPa              ┃  ║
║  ┃  Humidity     Wind Speed     Pressure                ┃  ║
║  ┃  (Lebih lembab)(Angin lebih kuat)(Tekanan berbeda)    ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

### LAYAR 4: Error State - Kota Tidak Ditemukan

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:33      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Jakarta                                           ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║  ┌─────────────────────────────────────────────────────┐  ║
║  │ ⚠️  Kota "Jakarta" tidak ditemukan.              ✕   │  ║
║  └─────────────────────────────────────────────────────┘  ║
║      ^ SnackBar Error Message (Auto dismiss 4 detik)      ║
║                                                            ║
║  📍 DENPASAR                                               ║
║  PARTLY CLOUDY                                             ║
║  (Tetap menampilkan data sebelumnya)                       ║
║                                                            ║
║                          28.5°                             ║
║                                                            ║
║                    Feels like 29.2°                        ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃  💧  65%     🌬️  4.5 m/s    ⚡  1013 hPa              ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

### LAYAR 5: Sunny Weather - Gianyar

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:35      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Gianyar                                           ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                      📍 GIANYAR                            ║
║                     SUNNY WEATHER                          ║
║                                                            ║
║                          31.2°                             ║
║                   (Suhu paling panas)                      ║
║                                                            ║
║                    Feels like 32.5°                        ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃  💧  45%     🌬️  3.1 m/s    ⚡  1015 hPa              ┃  ║
║  ┃  Humidity     Wind Speed     Pressure                ┃  ║
║  ┃  (Lebih kering)(Angin ringan)(Tekanan tinggi)         ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

### LAYAR 6: Different Weather - Badung (Cuaca Buruk)

```
╔═══════════════════════════════════════════════════════════╗
║                    ⌚ 14:37      📶 📡                    ║
╠═══════════════════════════════════════════════════════════╣
║                                                            ║
║               🌤️ Weather in Bali 🌤️                      ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃ 🔍  Badung                                            ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║                      📍 BADUNG                             ║
║                     HEAVY RAIN                             ║
║                                                            ║
║                          24.1°                             ║
║                   (Suhu paling dingin)                     ║
║                                                            ║
║                    Feels like 22.5°                        ║
║                                                            ║
║  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓  ║
║  ┃  💧  89%     🌬️  8.7 m/s    ⚡  1005 hPa              ┃  ║
║  ┃  Humidity     Wind Speed     Pressure                ┃  ║
║  ┃  (Sangat lembab)(Angin kuat)  (Tekanan rendah)        ┃  ║
║  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  ║
║                                                            ║
║         ⚡ Peringatan: Cuaca buruk di daerah ini          ║
║                                                            ║
╚═══════════════════════════════════════════════════════════╝
```

---

## 🎨 Close-up: Komponen Utama

### ✨ Info Card dengan Glass Effect (Zoom In)

```
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                         ┃
┃    💧    65%      🌬️    4.5 m/s    ⚡ 1013  ┃
┃    Humidity       Wind Speed           Pressure
┃                                         ┃
┃  ┣━━━━━━━━━━━━━━┫ ┣━━━━━━━━━━━━━┫     ┃
┃  Glass Effect:                          ┃
┃  - Background: White 10% opacity        ┃
┃  - Blur: 15x15 pixels                   ┃
┃  - Border: White 30%, 1px               ┃
┃  - Border Radius: 30                    ┃
┃  - Padding: 24 vert, 16 horiz           ┃
┃                                         ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

---

### 🔍 Search Bar (Zoom In)

```
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🔍  Cari kota di Bali (Ubud, Gianyar...)        ┃
┃                                                 ┃
┃ Design:                                         ┃
┃ - Background: White 15% opacity                 ┃
┃ - Border: None (rounded)                        ┃
┃ - Border Radius: 20                             ┃
┃ - Prefix Icon: Search (White 70%)               ┃
┃ - Hint Text: White 54%                          ┃
┃ - Input Text: White 100%                        ┃
┃ - Cursor Color: White                           ┃
┃ - Height: ~56dp                                 ┃
┃                                                 ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

---

### 🌡️ Temperature Display (Zoom In)

```
                    28.5°

Display Properties:
┌─────────────────────────────────────┐
│ Font Size:      120px               │
│ Font Weight:    Light (w200)         │
│ Color:          White (#FFFFFF)      │
│ Format:         XX.X° (1 decimal)    │
│ Line Height:    120px                │
│ Alignment:      Center               │
│ Character:      Large, prominent     │
│ Visibility:     Easy to read         │
│ Impact:         Primary focus        │
└─────────────────────────────────────┘
```

---

### 📍 Location Info (Zoom In)

```
        📍 DENPASAR
       PARTLY CLOUDY

City Properties:
- Font Size: 38px
- Font Weight: Bold (w600)
- Color: White 100%
- Case: UPPERCASE
- Letter Spacing: Normal

Description Properties:
- Font Size: 16px
- Font Weight: Normal (w400)
- Color: White 100%
- Case: UPPERCASE
- Letter Spacing: 1.2

Spacing:
- Between elements: 8px
- Below to temperature: 60px
```

---

## 📐 Layout Spacing

```
┌─────────────────────────────────────────────────────┐
│                   App Bar (56dp)                    │
├─────────────────────────────────────────────────────┤
│                                                      │
│  ◄─── Padding: 24px horizontal ───►                │
│                                                      │
│                  Search Bar                         │
│  [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]                      │
│                  ↓ 40dp ↓                           │
│                                                      │
│              Location & Description                │
│  ◄─ 100dp padding top ─►                           │
│                                                      │
│                  Temperature                        │
│  ◄─ 60dp above ─►                                  │
│  ┌──────────────────────────────┐                  │
│  │       28.5°                  │                  │
│  │ (120px large)                │                  │
│  └──────────────────────────────┘                  │
│                  ↓ 4dp ↓                            │
│           Feels like 29.2°                          │
│                  ↓ 70dp ↓                           │
│                                                      │
│  ┌──────────────────────────────┐                  │
│  │  💧 65%  🌬️ 4.5m  ⚡ 1013hPa │                  │
│  │                               │                  │
│  │    Glass Morphism Card       │                  │
│  │    Border Radius: 30px       │                  │
│  └──────────────────────────────┘                  │
│                                                      │
│                 ◄─ 24px ─►                         │
│                                                      │
└─────────────────────────────────────────────────────┘
```

---

## 🎯 User Flow Diagram

```
┌─────────────┐
│  Start App  │
└──────┬──────┘
       ↓
┌──────────────────┐
│ Load Default     │
│ City: Denpasar   │
└──────┬───────────┘
       ↓
┌──────────────────────────────┐
│ Fetch Weather from API       │
│ Show Loading Indicator       │
└──────┬───────────────────────┘
       ↓
┌──────────────────┐
│ Display Weather  │
│ - Location       │
│ - Description    │
│ - Temperature    │
│ - Details        │
└──────┬───────────┘
       ↓
┌─────────────────────────────┐
│ User Ready to Search        │
│ Type city in search bar     │
│ Press Enter/Submit          │
└──────┬──────────────────────┘
       ↓
   ┌───┴────┐
   ↓        ↓
 SUCCESS  ERROR
   │        │
   ↓        ↓
┌────┐  ┌──────────┐
│New │  │SnackBar  │
│Data│  │Error Msg │
└────┘  └──────────┘
```

---

## 🎨 Color Gradient Visualization

```
Top of Screen:
┌──────────────────────────────┐
│ ░░░░░░░░░░░░░░░░░░░░░░░░░░ │  #2E335A
│ ░░░░░░░░░░░░░░░░░░░░░░░░░░ │  Biru Gelap
│ ░░░░░░░░░░░░░░░░░░░░░░░░░░ │
│                              │
│  [Weather Content Here]      │
│                              │
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │  #1C1B33
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │  Ungu Gelap
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ │
└──────────────────────────────┘
Bottom of Screen

Linear Gradient:
- Begin: topCenter
- End: bottomCenter
- Duration: Smooth transition
```

---

## ✨ Special Effects

### Backdrop Filter Blur
```
Background (Gradient)
       ↓
Blur Layer (15x15 sigma)
       ↓
Result: Frosted Glass Effect
       ↓
Content Layer (Info Card)
```

---

## 📱 Responsive Behavior

```
Portrait Mode (Standard):
┌──────────┐
│ App Bar  │ - Full width
├──────────┤
│          │
│ Search   │ - Center aligned with 24px padding
│          │
│          │
│ Weather  │ - Center aligned
│ Data     │ - Large temperature
│          │
│ Info     │ - Horizontal arrangement
│ Card     │ - Evenly spaced
│          │
└──────────┘

Landscape Mode:
┌─────────────────────────┐
│ AppBar (Full Width)     │
├─────────────────────────┤
│                         │
│ ┌─────────┐ ┌─────────┐ │
│ │ Weather │ │ Info    │ │
│ │ Data    │ │ Card    │ │
│ └─────────┘ └─────────┘ │
│                         │
└─────────────────────────┘
```

---

## 🔔 Notification & Feedback

### Loading Indicator
```
    ⟳ ⟳ ⟳ ⟳
   Loading...
   CircularProgressIndicator
   - Color: White
   - Size: 50dp
   - Center aligned
```

### Error Message
```
┌─────────────────────────────────────┐
│ ⚠️  Kota "XXX" tidak ditemukan.      │
└─────────────────────────────────────┘
- SnackBar duration: 4 seconds
- Auto dismissible
- Bottom aligned
```

---

## 📊 Weather Data Interpretation

```
Temperature:
  < 20°C → Cold (recommended: long clothes)
  20-25°C → Cool (comfortable)
  25-30°C → Warm (light clothes)
  > 30°C → Hot (very warm, need sun protection)

Humidity:
  < 30% → Dry
  30-60% → Comfortable
  60-80% → Humid
  > 80% → Very humid (muggy)

Wind Speed:
  < 2 m/s → Calm
  2-5 m/s → Light breeze
  5-8 m/s → Moderate wind
  > 8 m/s → Strong wind

Pressure:
  < 1010 hPa → Low pressure (storms possible)
  1010-1025 hPa → Normal
  > 1025 hPa → High pressure (stable)
```

---

## 🚀 Interaction Timeline

```
Time │ Action                  │ Display
────┼─────────────────────────┼──────────────────
  0  │ App Launched            │ Loading state
  1  │ Default city loaded     │ Denpasar weather
     │                         │
 n+1 │ User types "Ubud"       │ Text in field
     │                         │
 n+2 │ User presses Enter      │ Loading indicator
     │                         │
 n+3 │ API responds (success)  │ New weather data
     │ OR                      │
     │ API responds (error)    │ Error message
     │                         │
 n+5 │ User can search again   │ Ready for input
```

---

**Dokumentasi Lengkap**
**Last Updated: November 11, 2025**
**Platform: Cross-platform (iOS, Android, Web, Desktop)**
