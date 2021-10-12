import 'package:flutter/material.dart';
import 'package:movie_app/app/colors.dart';
import 'package:movie_app/app/text_theme.dart';

final outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(100.0),
  borderSide: const BorderSide(
    color: Colors.white,
  ),
);

final theme = ThemeData(
  primarySwatch: MaterialColor(0xFFFEE715, primaryMaterialColor),
  scaffoldBackgroundColor: blackBackground,
  textTheme: textTheme,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(
      color: Colors.white,
    ),
    contentPadding: const EdgeInsets.all(15.0),
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
);
