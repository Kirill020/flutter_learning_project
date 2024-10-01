import '../features/crypto_list/view/crypto_list_screen.dart';
import '../features/single_crypto_coin/single_crypto_coin.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
