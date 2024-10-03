import 'package:crypto_currencies_list/repositories/crypto_coins/models/models.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
