import 'package:equatable/equatable.dart';

class CryptoCoin extends Equatable {
  const CryptoCoin({
    required this.name,
    required this.priceInUSD,
    required this.imageUrl,
    required this.hight24,
    required this.low24,
  });

  final String name;
  final double priceInUSD;
  final String imageUrl;
  final double hight24;
  final double low24;

  @override
  List<Object?> get props => [
        name,
        priceInUSD,
        imageUrl,
        hight24,
        low24,
      ];
}
