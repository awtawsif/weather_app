## 🌤️ Weather App: A Simple Flutter Application

This is a **Flutter-based weather application** that provides a sleek and straightforward way to view the current weather and a 7-hour forecast for **Noakhali, Bangladesh**. The app fetches data from the OpenWeatherMap API and displays it in a clean, intuitive user interface.

### Features

  * **Current Weather**: Displays the current temperature, sky conditions (sunny or cloudy), humidity, wind speed, and atmospheric pressure.
  * **21-Hour Forecast**: Provides an hourly forecast, showing the time, temperature, and sky conditions for the next 21 hours.
  * **Responsive UI**: The app's design is built with Flutter widgets that adapt to different screen sizes.
  * **API Integration**: Utilizes the `http` package to fetch real-time weather data from OpenWeatherMap.

-----

### Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

#### Prerequisites

  * Flutter SDK installed and configured.
  * An Android device or emulator for running the app.
  * A valid API key from OpenWeatherMap.

#### Installation

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/awtawsif/weather_app.git
    cd weather_app
    ```
2.  **Add your API key**:
      * Create a file named `.env` in the root of your project directory.
      * Add your OpenWeatherMap API key to the file in the following format:
        ```env
        API_KEY=your_api_key_here
        ```
      * Add `.env` to your `.gitignore` file to prevent it from being committed to version control.
3.  **Get dependencies**:
    ```bash
    flutter pub get
    ```
4.  **Run the app**:
    ```bash
    flutter run
    ```
    This command will build and install the app on your connected device or emulator.
