![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)


![Star](https://img.shields.io/github/stars/zoh01/weather_apis?style=social)
![Social](https://img.shields.io/github/forks/zoh01/weather_apis?style=social)

</div>

---

## 📖 Introduction

---

## ✨ Features


  

---

## 🏗️ Project Structure
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


        Parameters:
          - q: City name
          - appid: Your API key
        
    Parameters:
      - q: City name
      - appid: Your API key
      - units: metric/imperial

---

## 🎨 Customization
### Change Theme Colors
Edit `lib/constants/app_colors.dart`:

### Add More Weather Providers
Implement the `WeatherService` interface:

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

---

## 🐛 Troubleshooting
### API Key Issues



---

## 🗺️ Roadmap
- Current weather display
- 5-day forecast
- City search
- GPS location
- Weather alerts
- Hourly forecast graphs
