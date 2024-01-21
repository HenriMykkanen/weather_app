import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Theme structure done with heavy inspiration from:
// https://medium.com/@kinjal.dhamat.sa/light-dark-app-theme-with-custom-color-in-flutter-c686db585f0c

final appThemeProvider = StateProvider<bool>((ref) => true);

// Extension function which we use to access custom color easily.
AppColors colors(context) =>
    Theme.of(context as BuildContext).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context, bool isDarkTheme) {
  return ThemeData(
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
        color1: isDarkTheme ? Colors.black : Colors.white,
        color2: isDarkTheme ? Colors.white : Colors.black,
        color3: isDarkTheme ? Colors.black : Color.fromARGB(230, 164, 180, 227),
        color4: isDarkTheme ? Colors.black : Color.fromARGB(255, 230, 164, 180),
      ),
    ],
    brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    scaffoldBackgroundColor:
        isDarkTheme ? Colors.black : Color.fromARGB(155, 255, 248, 227),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 128,
        backgroundColor:
            isDarkTheme ? Colors.black : Color.fromARGB(255, 230, 164, 180),
        selectedItemColor: isDarkTheme ? Colors.white : Colors.black,
        unselectedItemColor: isDarkTheme ? Colors.white54 : Colors.black54),
    textTheme: Theme.of(context).textTheme.copyWith(
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: isDarkTheme ? Colors.white70 : Colors.black87,
        ),
        displayMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: isDarkTheme ? Colors.white70 : Colors.black87,
        ),
        displaySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isDarkTheme ? Colors.white70 : Colors.black87)),
  );
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;

  const AppColors(
      {required this.color1,
      required this.color2,
      required this.color3,
      required this.color4});

  // In the context of the AppColors class you provided,
  // the copyWith method allows you to create a new instance of AppColors
  // with potentially updated color values while keeping the original instance unchanged.
  // This can be useful when you want to modify certain properties of
  // an immutable object without modifying the original object.
  // The copyWith method is often used in combination with const constructors
  // and helps ensure that your objects remain immutable,
  // which can have benefits for certain architectural patterns and state management approaches.
  @override
  AppColors copyWith(
      {Color? color1, Color? color2, Color? color3, Color? color4}) {
    return AppColors(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
    );
  }

  // This is to make transitions and animations smoother looking colors wise.
  // if the other object is not of type AppColors,
  // the lerp method returns the current instance of AppColors (this)
  // without performing any color interpolation.
  // This is a safety check to make sure that the lerp method
  // is only called with objects of the correct type,
  // preventing unintended behavior or errors in case the other object is not a valid AppColors instance.
  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      color1: Color.lerp(color1, other.color1, t),
      color2: Color.lerp(color2, other.color2, t),
      color3: Color.lerp(color3, other.color3, t),
      color4: Color.lerp(color4, other.color4, t),
    );
  }
}
