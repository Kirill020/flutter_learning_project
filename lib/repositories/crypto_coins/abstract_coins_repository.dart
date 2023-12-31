import 'package:crypto_currencies_list/repositories/crypto_coins/models/crypto_coin_model.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
