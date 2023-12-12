import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
    primarySwatch: Colors.yellow,
    dividerColor: Colors.white12,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.yellow,
      titleTextStyle: TextStyle(
        color: Color.fromARGB(255, 31, 31, 31),
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
    ),
    textTheme: TextTheme(
        bodyMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        labelSmall: TextStyle(
          color: Colors.white.withOpacity(0.5),
          fontWeight: FontWeight.w700,
          fontSize: 14,
        )));
