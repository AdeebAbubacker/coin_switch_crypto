// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crypto _$CryptoFromJson(Map<String, dynamic> json) => Crypto(
      id: json['_id'] as String?,
      cryptoCode: json['crypto_code'] as String?,
      cryptoName: json['crypto_name'] as String?,
      imageUrl: json['image_url'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$CryptoToJson(Crypto instance) => <String, dynamic>{
      '_id': instance.id,
      'crypto_code': instance.cryptoCode,
      'crypto_name': instance.cryptoName,
      'image_url': instance.imageUrl,
      '__v': instance.v,
    };
