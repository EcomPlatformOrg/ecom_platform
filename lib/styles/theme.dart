import 'package:flutter/material.dart';

// customThemeData 是一个 ThemeData 對象 定義 app 的主題
final customThemeData = ThemeData(
  // primaryColor 是 app 的主要顏色
  primaryColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue,
      side: const BorderSide(color: Colors.blue),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintStyle: const TextStyle(color: Colors.grey),
    prefixStyle: const TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(
    color: Colors.grey,
  ),
);