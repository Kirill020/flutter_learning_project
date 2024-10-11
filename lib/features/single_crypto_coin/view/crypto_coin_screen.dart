import 'package:auto_route/auto_route.dart';
import 'package:crypto_currencies_list/features/single_crypto_coin/bloc/crypto_coin_details_bloc.dart';
import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  final _cryptoCoinDetailsBloc = CryptoCoinDetailsBloc(
    GetIt.I<AbstractCoinsRepository>(),
  );

  @override
  void initState() {
    _cryptoCoinDetailsBloc
        .add(LoadCryptoCoinDetails(coinCode: widget.coin.name));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: BlocBuilder<CryptoCoinDetailsBloc, CryptoCoinDetailsState>(
            bloc: _cryptoCoinDetailsBloc,
            builder: (context, state) {
              if (state is CryptoCoinDetailsLoaded) {
                final coin = state.coin;
                final coinDetails = coin.details;
                return CoinInfoColumn(
                    coin: coin, coinDetails: coinDetails, theme: theme);
              }
              return const Center(
                  child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              ));
            }));
  }
}

class CoinInfoColumn extends StatelessWidget {
  const CoinInfoColumn({
    super.key,
    required this.coin,
    required this.coinDetails,
    required this.theme,
  });
  final CryptoCoin? coin;
  final CryptoCoinDetails? coinDetails;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network(
        coinDetails!.fullImageUrl,
        width: 200,
        height: 200,
      ),
      Text('${coin?.name}'),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  '${coinDetails?.priceInUSD.toStringAsFixed(4)} \$',
                  style: theme.textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'High 24 Hour',
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          '${coinDetails!.hight24.toStringAsFixed(4)} \$',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Low 24 Hour',
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          '${coinDetails!.low24.toStringAsFixed(4)} \$',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
