# Flutter Weather Application

A simple weather App created using [Flutter](https://flutter.dev/) and using an API from [WeatherAPI](https://www.weatherapi.com/).
Purpose of the project was to learn the basics of Riverpod State Management, attempt to have a decent folder structure/architecture and get some experience communicating with an external API.


## Screenshots featuring core functionalities and theming:
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/dd85cf00-246e-45d4-b63b-0adfc729e555" alt="Screenshot" width="200" height="400">
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/3f72b981-d1d3-484c-84c0-324be0aed6c6" alt="Screenshot" width="200" height="400">
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/bbb09f74-8a1c-48c9-a4a2-56f8fd8b48fa" alt="Screenshot" width="200" height="400">
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/647a68c0-f9aa-461f-82c4-5760162c5521" alt="Screenshot" width="200" height="400">
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/99b03504-36a8-4e89-9569-8043b93b0b96" alt="Screenshot" width="200" height="400">
<img src="https://github.com/HenriMykkanen/weather_app/assets/144138353/f16090a7-9ca1-4bb9-a3bf-9a0aa9d684877" alt="Screenshot" width="200" height="400">

## Functionalities

- Current temperature
- 24 hour weather
- Forecast 3 days
- Default city search
- Custom city search
- Light / Dark mode (currently commented out for theme overhaul)

## Packages used

- [flutter_riverpod](https://riverpod.dev/) The state management solution for the project
- [go_router](https://pub.dev/packages/go_router) Navigation
- [http](https://pub.dev/packages/http) Network calls
- [cached_network_image](https://pub.dev/packages/cached_network_image) Show images from the internet and keep them in the cache directory.
- [flutter_settings_ui](https://github.com/yako-dev/flutter-settings-ui) Handy tools for building a settings UI
- [app_bar_with_search_switch](https://pub.dev/packages/app_bar_with_search_switch) AppBar with plenty of optional parameters
- [colorful_safe_area](https://pub.dev/packages/colorful_safe_area) Easy way to handle colours for SafeArea widget

## Helpful resources

- [Code With Andrea - Repository Pattern](https://codewithandrea.com/articles/flutter-repository-pattern/)
- [Kinjal Dhamat Light/Dark App Theme](https://medium.com/@kinjal.dhamat.sa/light-dark-app-theme-with-custom-color-in-flutter-c686db585f0c)
