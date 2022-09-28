import 'package:flutter/material.dart';
import 'package:flutter_application/gen/fonts.gen.dart';
import 'package:flutter_application/lib.dart';

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
      textTheme: ThemeData.light().textTheme.copyWith(
        headline1: ThemeData.light().textTheme.headline1?.copyWith(
          fontFamily: FontFamily.lato,
        ),

        headline2: ThemeData.light().textTheme.headline2?.copyWith(
            fontFamily: FontFamily.lato,
            color: Colors.black,
            fontSize: 44,
            fontWeight: FontWeight.bold
        ),
      )
  );
}
