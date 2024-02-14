# Flutter Weather Application

A simple weather App created using [Flutter](https://flutter.dev/) and using an API from [WeatherAPI](https://www.weatherapi.com/).
Purpose of the project was to learn the basics of Riverpod State Management, attempt to have a decent folder structure/architecture and get some experience communicating with an external API.


## Screenshots featuring core functionalities and theming:

<p>
<img src="https://private-user-images.githubusercontent.com/144138353/302124538-e0dfdfcc-d32a-450d-8f93-d92493387b9e.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzEzMDgsIm5iZiI6MTcwNzA3MTAwOCwicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI0NTM4LWUwZGZkZmNjLWQzMmEtNDUwZC04ZjkzLWQ5MjQ5MzM4N2I5ZS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODIzMjhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT03MWFmNjE3ODJhODBkY2Y0ZWIyMThiMWRmY2QyYTlkOGIyMWViNjE3OGY0ZGNmNGM3OTVkYzkxZGFjMmU1MTU0JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.MCvo__ieDBF1CYbN2-XFom1ILSCwGbQzacvKfLQdRO4" alt="Screenshot_1707070362" width="200" height="400">
<img src="https://private-user-images.githubusercontent.com/144138353/302125104-39f7d449-9dbd-4e1a-b7c1-4ea2a67e3a3e.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzE1MTksIm5iZiI6MTcwNzA3MTIxOSwicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1MTA0LTM5ZjdkNDQ5LTlkYmQtNGUxYS1iN2MxLTRlYTJhNjdlM2EzZS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODI2NTlaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT05MWYyNTBhODVmZjljNThmYjMxZTM5OTQ5NDBkNWM2OWVjYTA4OGVlYzg2ZDI4YTZkNWMxYmRiY2M2MmMzYjgyJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.aPe3r3cjV0_V1TKU-EcquO4Bj8MB7FgBQ1wA79ByjAs" alt="Screenshot_1707070408" width="200" height="400">
<img src="https://private-user-images.githubusercontent.com/144138353/302125166-32ae3d06-3308-4c82-a877-a92372667cb7.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzE1NTcsIm5iZiI6MTcwNzA3MTI1NywicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1MTY2LTMyYWUzZDA2LTMzMDgtNGM4Mi1hODc3LWE5MjM3MjY2N2NiNy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODI3MzdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT03MGY3MmI0M2NiMjNlNDVhYzliMmI5YzNjZDE1ZjcxNTFmNzA1MTllMGU5ODQxYTYxOTIwYzJlMWMzZWU2NWQ3JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.IS77teSVxyOzUm56FC14r4QMuCuS8v0pRWvUeUsNgZ8" alt="Screenshot_1707070440" width="200" height="400">
<img src="https://private-user-images.githubusercontent.com/144138353/302125168-f0506aab-fc05-4483-9f20-27de366c87cd.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzE1NzYsIm5iZiI6MTcwNzA3MTI3NiwicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1MTY4LWYwNTA2YWFiLWZjMDUtNDQ4My05ZjIwLTI3ZGUzNjZjODdjZC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODI3NTZaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT01YzIzMGM5ZTE1YzJmODRiY2UwYjEzMWNkNzAxMzFjNTRjMTU0MDZjZjdmODliNTg2N2VjNjY0ODYyM2E3YTkwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.W6LWWx9lOChGkoSnZvNf2jxDjeKaho_N4KPai09lMXU" alt="Screenshot_1707070449" width="200" height="400">
</p>
<p>
<img src="https://private-user-images.githubusercontent.com/144138353/302125762-d215cd1b-5b48-4578-8fff-02972b2d1111.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzIxMDUsIm5iZiI6MTcwNzA3MTgwNSwicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1NzYyLWQyMTVjZDFiLTViNDgtNDU3OC04ZmZmLTAyOTcyYjJkMTExMS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODM2NDVaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hZjQ5NmE3Njg1MjUxNDMyOGYzNzBmZjA0MDFmZGQwMDg2NWNhMDE4ZjRmZWQ2YzUzMDA2Zjc5ODRmZjA4ZTVmJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.jJLLSlLuF-gKaEWgXMlyMNe0I6K-LhXqPVGq2QThhrE" alt="Screenshot_1707070455" width="200" height="400">
<img src="https://private-user-images.githubusercontent.com/144138353/302125179-a5fa6ed8-e339-47c8-a45b-fb173ae8e384.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzE2NDIsIm5iZiI6MTcwNzA3MTM0MiwicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1MTc5LWE1ZmE2ZWQ4LWUzMzktNDdjOC1hNDViLWZiMTczYWU4ZTM4NC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODI5MDJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hN2M0MmM3MzMxMDY3MDQyNjJmMDYxMjJlNzk3MThjYTc2NmY2Y2Y1YzRkNzM4ZTc4OGVmYjNjYWMwM2Q5NDc0JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.S2Tn8_t1HOD2OLCwQ4NOMkpHoT7KTM4SWEEByItOP9M" alt="Screenshot_1707070465" width="200" height="400">
<img src="https://private-user-images.githubusercontent.com/144138353/302125180-7c1fd815-1d3b-4422-bf7b-cdb747333fd4.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDcwNzE2NjMsIm5iZiI6MTcwNzA3MTM2MywicGF0aCI6Ii8xNDQxMzgzNTMvMzAyMTI1MTgwLTdjMWZkODE1LTFkM2ItNDQyMi1iZjdiLWNkYjc0NzMzM2ZkNC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMjA0JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDIwNFQxODI5MjNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1kNjBhNDY4NmEzODU0NTRkZmQ1N2Q5MDYwNGQwOGI3YmRjODg4MjA4OWI5ZDE0MWNkY2QwMDQxYjIyNTdjZDJkJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.ulNG_830HpRe2fpMQfy2xs9stBWwzNk44NXs0wuhVzI" alt="Screenshot_1707070483" width="200" height="400">
</p>

## Functionalities

- Current temperature
- 24 hour weather
- Forecast 3 days
- Default city search
- Custom city search
- Light / Dark mode

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
