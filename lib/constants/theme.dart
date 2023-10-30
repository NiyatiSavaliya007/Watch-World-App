import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color.fromARGB(255, 141, 115, 106),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 141, 115, 106),
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 141, 115, 106),
            ),
            side: const BorderSide(
                color: Color.fromARGB(255, 141, 115, 106), width: 1.7),
            disabledForegroundColor:
                Color.fromARGB(255, 141, 115, 106).withOpacity(0.38))),
    inputDecorationTheme: InputDecorationTheme(
        border: outlineInputBorder,
        errorBorder: outlineInputBorder,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 141, 115, 106),
            disabledBackgroundColor: Colors.grey,
            textStyle: const TextStyle(fontSize: 18.0))),
    primarySwatch: Colors.brown,
    canvasColor: Colors.brown,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black)));

OutlineInputBorder outlineInputBorder =
    const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey));
