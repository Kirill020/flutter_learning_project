import 'dart:async';

import 'package:crypto_currencies_list/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'crypto_coins_list_app.dart';
import 'repositories/crypto_coins/crypto_coins_repository.dart';

void main() {
  final dio = Dio();
  final talker = TalkerFlutter.init();
  dio.interceptors.add(
    TalkerDioLogger(
      talker: talker,
      settings: TalkerDioLoggerSettings(printResponseData: false),
    ),
  );

  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: TalkerBlocLoggerSettings(
        printEventFullData: false, printStateFullData: false),
  );

  GetIt sl = GetIt.instance;
  sl.registerLazySingleton<AbstractCoinsRepository>(
    () => CryptoCoinsRepository(dio: dio),
  );

  sl.registerSingleton(talker);

  FlutterError.onError =
      (details) => sl<Talker>().handle(details.exception, details.stack);

  runZonedGuarded(
    () => runApp(const CryptoCurrenciesListApp()),
    (error, stack) => sl<Talker>().handle(error, stack),
  );
}
