import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    dividerColor: Colors.white12,
    appBarTheme: const AppBarTheme(
      elevation: 0.3,
      backgroundColor: Colors.yellow,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
    ),
    textTheme: TextTheme(
        headlineMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
        bodyMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        labelSmall: TextStyle(
          color: Colors.white.withOpacity(0.5),
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        labelMedium: const TextStyle(
          color: Colors.green,
          fontSize: 25,
        )));
