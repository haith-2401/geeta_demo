import 'package:flutter/material.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        onSurface: Colors.black,
        side: const BorderSide(
            color: Colors.black, width: 2, style: BorderStyle.solid),
        fixedSize: const Size(222, 54),
        shape: const StadiumBorder(),
      ),
    ),
  );
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        onSurface: Colors.black,
        side: const BorderSide(
            color: Colors.black, width: 2, style: BorderStyle.solid),
        fixedSize: const Size(222, 54),
        shape: const StadiumBorder(),
      ),
    ),
  );
}
