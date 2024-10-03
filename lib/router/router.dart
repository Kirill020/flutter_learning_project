import '../features/crypto_list/crypto_list.dart';
import '../features/single_crypto_coin/single_crypto_coin.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
