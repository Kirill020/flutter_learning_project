import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  CryptoCoin? coin;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;

    assert(args != null && args is CryptoCoin, 'You must provide String args');

    coin = args as CryptoCoin;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(coin?.name ?? '...'),
              const SizedBox(
                width: 8,
              ),
              Image.network(
                coin!.imageUrl,
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ],
          )),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Prise in USD: ',
              style: theme.textTheme.labelMedium,
            ),
            Text('${coin?.priceInUSD.toStringAsFixed(4)} \$'),
            // Image.network(
            //   coin!.imageUrl,
            //   width: 27,
            //   height: 27,
            //   fit: BoxFit.contain,
            // ),
          ],
        ),
      ),
      // Column(
      //   children: [
      //     Text('${coin?.priceInUSD.toStringAsFixed(4)} \$'),
      //   ],
      // ),
    );
  }
}
