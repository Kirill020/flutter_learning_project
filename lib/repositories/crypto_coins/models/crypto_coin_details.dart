import 'package:equatable/equatable.dart';

class CryptoCoinDetails extends Equatable {
  const CryptoCoinDetails({
    required this.toSymbol,
    required this.lastUpdate,
    required this.name,
    required this.priceInUSD,
    required this.imageUrl,
    required this.hight24,
    required this.low24,
  });

  final String name;
  final double priceInUSD;
  final String imageUrl;
  final String toSymbol;
  final DateTime lastUpdate;
  final double hight24;
  final double low24;

  @override
  List<Object?> get props => [
        name,
        priceInUSD,
        imageUrl,
        toSymbol,
        lastUpdate,
        hight24,
        low24,
      ];
}
