part of 'crypto_coin_details_bloc.dart';

class CryptoCoinDetailsState extends Equatable {
  const CryptoCoinDetailsState();

  @override
  List<Object?> get props => [];
}

class CryptoCoinDetailsLoading extends CryptoCoinDetailsState {
  const CryptoCoinDetailsLoading();
}

class CryptoCoinDetailsLoaded extends CryptoCoinDetailsState {
  const CryptoCoinDetailsLoaded(this.coinDetails);

  final CryptoCoinDetails coinDetails;

  @override
  List<Object?> get props => [coinDetails];
}

class CryptoCoinDetailsLoadedFailure extends CryptoCoinDetailsState {
  const CryptoCoinDetailsLoadedFailure(this.exception);

  final Object exception;

  @override
  List<Object?> get props => [exception];
}
