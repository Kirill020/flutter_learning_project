import 'dart:async';

import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'crypto_coins_list_app.dart';

void main() async {
  runZonedGuarded(() async {
    // initialize Flutter Binding in the same Zone
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize and add Talker (logger) to Singleton
    final talker = TalkerFlutter.init();
    GetIt.I.registerSingleton(talker);

    // Initialize Hive Box and add adapters
    const cryptoCoinsBoxName = 'crypto_coins_box';

    await Hive.initFlutter();

    Hive.registerAdapter(CryptoCoinAdapter());
    Hive.registerAdapter(CryptoCoinDetailsAdapter());

    final cryptoCoinsBox = await Hive.openBox<CryptoCoin>(cryptoCoinsBoxName);

    // Initialize dio and added interceptor Talker
    final dio = Dio();
    dio.interceptors.add(
      TalkerDioLogger(
        talker: talker,
        settings: TalkerDioLoggerSettings(printResponseData: false),
      ),
    );

    // Added Talker to bloc observer for logs
    Bloc.observer = TalkerBlocObserver(
      talker: talker,
      settings: TalkerBlocLoggerSettings(
          printEventFullData: false, printStateFullData: false),
    );

    // Register Coins repository singleton with dio and hive box
    GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(
        dio: dio,
        cryptoCoinsBox: cryptoCoinsBox,
      ),
    );

    // catch flutter errors and log them in Talker
    FlutterError.onError =
        (details) => GetIt.I<Talker>().handle(details.exception, details.stack);

    // Run App
    runApp(CryptoCurrenciesListApp());
  }, (error, stack) {
    GetIt.I<Talker>().handle(error, stack);
  });
}
