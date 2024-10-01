// import 'package:crypto_currencies_list/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>((event, emit) async {
      try {
        final cryptoCoinsList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: cryptoCoinsList));
      } catch (e) {
        emit(CryptoListLoadedFailure(exception: e));
      }
    });
  }

  final AbstractCoinsRepository coinsRepository;
}
