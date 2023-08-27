import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey[700]),
    titleTextStyle: TextStyle(color: Colors.grey[700], fontSize: 20)
  ),
  colorScheme: ColorScheme.light(
      background: Colors.grey[200]!,
      primary:Colors.grey[500]!,
      secondary: Colors.grey[350]!
  )
);