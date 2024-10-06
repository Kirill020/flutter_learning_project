part of 'crypto_coin_details_bloc.dart';

abstract class CryptoCoinDetailsEvent extends Equatable {
  const CryptoCoinDetailsEvent();
  @override
  List<Object> get props => [];
}

class LoadCryptoCoinDetails extends CryptoCoinDetailsEvent {
  const LoadCryptoCoinDetails({
    required this.coinCode,
  });
  final String coinCode;
  @override
  List<Object> get props => [coinCode];
}
