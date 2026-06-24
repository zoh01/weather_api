![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)




![Star](https://img.shields.io/github/stars/zoh01/weather_apis?style=social)
![Social](https://img.shields.io/github/forks/zoh01/weather_apis?style=social)

</div>

---

## 📖 Introduction


---

## ✨ Features
### 🌤️ Weather Information
- **Current Weather** - Real-time temperature, humidity, and conditions


### 📊 Detailed Metrics
- **Temperature** - Current, feels-like, min/max
- **Wind** - Speed and direction



- **Beautiful UI** - Clean, modern design
- **Weather Icons** - Animated weather conditions



---

    
    # State Management
    provider: ^latest              # State management
    # or flutter_bloc: ^latest
    
    # Networking
    http: ^latest                  # HTTP requests
    dio: ^latest                   # Advanced HTTP client
    
    # Location
    geolocator: ^latest            # GPS location
    geocoding: ^latest             # Reverse geocoding
    
    # UI
    google_fonts: ^latest          # Custom fonts
    intl: ^latest                  # Date formatting
    lottie: ^latest               # Animations
    cached_network_image: ^latest  # Image caching
    

### Get Your API Key
1. Visit [OpenWeatherMap](https://openweathermap.org/api)
2. Sign up for a free account


---

## 🚀 Installation
### Prerequisites

---



    
    # 3. Configure API Key
    # Open api.env file and add your API key:
    echo "WEATHER_API_KEY=your_api_key_here" > api.env


---

## 💡 Usage
### Search for a City
1.  Tap the search icon
2.  Type city name (e.g., "London", "New York")

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
    ├── widgets/             # Reusable widgets
    │   ├── weather_card.dart
    │   └── forecast_item.dart
    └── main.dart

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

    WEATHER_API_KEY=your_openweather_api_key
    WEATHER_BASE_URL=https://api.openweathermap.org/data/2.5

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
- Weather widgets
- Multiple language support

---

## 🤝 Contributing
Contributions welcome!

    # Fork the repo
    # Create your feature branch
    git checkout -b feature/AmazingFeature
    
    # Commit your changes
    git commit -m 'Add AmazingFeature'
    
    # Push to the branch
    git push origin feature/AmazingFeature
    



