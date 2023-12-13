import 'package:crypto_currencies_list/features/crypto_list/Widgets/widgets.dart';
import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_currencies_list/repositories/crypto_coins/models/crypto_coin_model.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Currencies List"),
      ),
      body: (_cryptoCoinsList == null)
          ? const SizedBox()
          : ListView.separated(
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                return CryptoCoinTile(coin: coin);
              }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.download),
          onPressed: () async {
            _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
            setState(() {});
          }),
    );
  }
}
