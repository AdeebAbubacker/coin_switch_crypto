import 'package:json_annotation/json_annotation.dart';

part 'crypto.g.dart';

@JsonSerializable()
class Crypto {
	@JsonKey(name: '_id') 
	String? id;
	@JsonKey(name: 'crypto_code') 
	String? cryptoCode;
	@JsonKey(name: 'crypto_name') 
	String? cryptoName;
	@JsonKey(name: 'image_url') 
	String? imageUrl;
	@JsonKey(name: '__v') 
	int? v;

	Crypto({
		this.id, 
		this.cryptoCode, 
		this.cryptoName, 
		this.imageUrl, 
		this.v, 
	});

	factory Crypto.fromJson(Map<String, dynamic> json) {
		return _$CryptoFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CryptoToJson(this);
}
