// import 'package:crypto_currencies_list/features/crypto_list/crypto_list.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

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
      navigatorObservers: [
        TalkerRouteObserver(GetIt.I<Talker>()),
      ],
    );
  }
}
