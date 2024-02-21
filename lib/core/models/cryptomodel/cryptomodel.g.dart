// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cryptomodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cryptomodel _$CryptomodelFromJson(Map<String, dynamic> json) => Cryptomodel(
      crypto: (json['crypto'] as List<dynamic>?)
          ?.map((e) => Crypto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CryptomodelToJson(Cryptomodel instance) =>
    <String, dynamic>{
      'crypto': instance.crypto,
    };
