import 'package:auto_route/auto_route.dart';
import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import '../features/crypto_list/crypto_list.dart';
import '../features/single_crypto_coin/single_crypto_coin.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CryptoListRoute.page, initial: true),
        AutoRoute(page: CryptoCoinRoute.page),
      ];
}
