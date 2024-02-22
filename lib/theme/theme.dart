import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
    dividerColor: Colors.white12,
    appBarTheme: const AppBarTheme(
      elevation: 0.3,
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
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
        )));
