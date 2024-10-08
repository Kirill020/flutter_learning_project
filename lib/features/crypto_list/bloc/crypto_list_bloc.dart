import 'dart:async';

import 'package:crypto_currencies_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>(_load);
  }

  final AbstractCoinsRepository coinsRepository;

  FutureOr<void> _load(event, emit) async {
    try {
      if (state is! CryptoListLoaded) {
        emit(CryptoListLoading());
      }
      final cryptoCoinsList = await coinsRepository.getCoinsList();
      emit(CryptoListLoaded(coinsList: cryptoCoinsList));
    } catch (e, st) {
      emit(CryptoListLoadedFailure(exception: e));
      GetIt.I<Talker>().handle(e, st);
    } finally {
      event.completer?.complete();
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    GetIt.I<Talker>().handle(error, stackTrace);
    super.onError(error, stackTrace);
  }
}
