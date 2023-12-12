import 'package:crypto_currencies_list/features/crypto_list/crypto_list.dart';
import 'package:flutter/material.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Coins List',
      theme: darkTheme,
      routes: routes,
      home: const CryptoListScreen(),
    );
  }
}
