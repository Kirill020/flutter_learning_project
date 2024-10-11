// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coin_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CryptoCoinDetailsAdapter extends TypeAdapter<CryptoCoinDetails> {
  @override
  final int typeId = 1;

  @override
  CryptoCoinDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CryptoCoinDetails(
      priceInUSD: fields[0] as double,
      imageUrl: fields[1] as String,
      toSymbol: fields[2] as String,
      lastUpdate: fields[3] as DateTime,
      hight24: fields[4] as double,
      low24: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CryptoCoinDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.priceInUSD)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.toSymbol)
      ..writeByte(3)
      ..write(obj.lastUpdate)
      ..writeByte(4)
      ..write(obj.hight24)
      ..writeByte(5)
      ..write(obj.low24);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CryptoCoinDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinDetails _$CryptoCoinDetailsFromJson(Map<String, dynamic> json) =>
    CryptoCoinDetails(
      priceInUSD: (json['PRICE'] as num).toDouble(),
      imageUrl: json['IMAGEURL'] as String,
      toSymbol: json['TOSYMBOL'] as String,
      lastUpdate: CryptoCoinDetails._dateTimeFromJson(
          (json['LASTUPDATE'] as num).toInt()),
      hight24: (json['HIGH24HOUR'] as num).toDouble(),
      low24: (json['LOW24HOUR'] as num).toDouble(),
    );

Map<String, dynamic> _$CryptoCoinDetailsToJson(CryptoCoinDetails instance) =>
    <String, dynamic>{
      'PRICE': instance.priceInUSD,
      'IMAGEURL': instance.imageUrl,
      'TOSYMBOL': instance.toSymbol,
      'LASTUPDATE': CryptoCoinDetails._dateTimeToJson(instance.lastUpdate),
      'HIGH24HOUR': instance.hight24,
      'LOW24HOUR': instance.low24,
    };
