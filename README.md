![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)


![Star](https://img.shields.io/github/stars/zoh01/weather_apis?style=social)
![Social](https://img.shields.io/github/forks/zoh01/weather_apis?style=social)

</div>

---

## 📖 Introduction


---

## ✨ Features


### 📊 Detailed Metrics
- **Temperature** - Current, feels-like, min/max
- **Wind** - Speed and direction



- **Beautiful UI** - Clean, modern design
- 
---
    
    # State Management
    provider: ^latest              # State management
    
    # Networking
    http: ^latest                  # HTTP requests
    dio: ^latest                   # Advanced HTTP client

    

---

## 🏗️ Project Structure
    lib/
    ├── models/              # Data models
    │   ├── weather.dart
    │   └── forecast.dart
    ├── services/            # API & location services
    │   ├── weather_service.dart
    │   └── location_service.dart
    ├── providers/           # State management
    │   └── weather_provider.dart
    ├── screens/             # App screens
    │   ├── home_screen.dart
    │   ├── search_screen.dart
    │   └── forecast_screen.dart

---

## 📱 App Preview

---

## 🌐 API Reference
This app uses the **OpenWeatherMap API:**

    // Current Weather
        GET https://api.openweathermap.org/data/2.5/weather
        Parameters:
          - q: City name
          - appid: Your API key
        
    // 5-Day Forecast
    GET https://api.openweathermap.org/data/2.5/forecast
    Parameters:
      - q: City name
      - appid: Your API key
      - units: metric/imperial

---

## 🎨 Customization
### Change Theme Colors
Edit `lib/constants/app_colors.dart`:

    const Color primaryColor = Color(0xFF667eea);
    const Color secondaryColor = Color(0xFF764ba2);

### Add More Weather Providers
Implement the `WeatherService` interface:

    abstract class WeatherService {
      Future<Weather> getCurrentWeather(String city);
      Future<Forecast> getForecast(String city);
    }

---

## 🔧 Configuration
### API Environment File
Create `api.env` in root:


### App Permissions
Android (`android/app/src/main/AndroidManifest.xml`):

    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>

iOS (`ios/Runner/Info.plist`):

    <key>NSLocationWhenInUseUsageDescription</key>
    <string>We need your location to show local weather</string>

---

## 🐛 Troubleshooting
### API Key Issues

    Error: 401 Unauthorized
    Solution: Check your API key in api.env file

### Location Not Working
    Error: Location permission denied
    Solution: Grant location permissions in app settings

### No Internet Connection
    Error: SocketException
    Solution: Check your internet connection

---

## 🗺️ Roadmap
- Current weather display
- 5-day forecast
- City search
- GPS location
- Weather alerts
- Hourly forecast graphs
