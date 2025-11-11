import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather in Bali',
      theme: ThemeData(useMaterial3: true, fontFamily: 'SF Pro Display'),
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Map<String, dynamic>? weatherData;
  final TextEditingController _cityController = TextEditingController();
  String cityName = 'Denpasar';

  final String apiKey = '0675cb7c54abc0c566bb8a3d69ab5ccc'; // 🔑 API Key kamu

  @override
  void initState() {
    super.initState();
    fetchWeather(cityName);
  }

  Future<void> fetchWeather(String city) async {
    try {
      final url =
          'https://api.openweathermap.org/data/2.5/weather?q=$city,bali,id&appid=$apiKey&units=metric';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          weatherData = data;
        });
      } else {
        setState(() => weatherData = null);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Kota "$city" tidak ditemukan.')),
        );
      }
    } catch (e) {
      setState(() => weatherData = null);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Gagal memuat data cuaca: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Weather in Bali",
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // 🌈 Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2E335A), Color(0xFF1C1B33)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // 🌫️ Blur Overlay
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(color: Colors.black.withOpacity(0.1)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 🔍 Search Box
                TextField(
                  controller: _cityController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Cari kota di Bali (Ubud, Gianyar...)',
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(Icons.search, color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      fetchWeather(value);
                    }
                  },
                ),
                const SizedBox(height: 40),

                // 🌥️ Cuaca Data
                if (weatherData == null)
                  const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                else ...[
                  Text(
                    weatherData!['name'] ?? 'Unknown Location',
                    style: const TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    weatherData!['weather'][0]['description']
                        .toString()
                        .toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    '${(weatherData!['main']['temp'] as num).toStringAsFixed(1)}°',
                    style: const TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Feels like ${(weatherData!['main']['feels_like'] as num).toStringAsFixed(1)}°",
                    style: const TextStyle(color: Colors.white54, fontSize: 18),
                  ),
                  const SizedBox(height: 70),

                  // 🧊 Info Card bawah
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white30, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildInfoTile(
                              icon: Icons.water_drop,
                              label: 'Humidity',
                              value: '${weatherData!['main']['humidity']}%',
                            ),
                            _divider(),
                            _buildInfoTile(
                              icon: Icons.air,
                              label: 'Wind',
                              value: '${weatherData!['wind']['speed']} m/s',
                            ),
                            _divider(),
                            _buildInfoTile(
                              icon: Icons.speed,
                              label: 'Pressure',
                              value: '${weatherData!['main']['pressure']} hPa',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() => Container(width: 1, height: 50, color: Colors.white24);

  Widget _buildInfoTile({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 28),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
