import 'package:json_annotation/json_annotation.dart';

import 'crypto.dart';

part 'cryptomodel.g.dart';

@JsonSerializable()
class Cryptomodel {
	List<Crypto>? crypto;

	Cryptomodel({this.crypto});

	factory Cryptomodel.fromJson(Map<String, dynamic> json) {
		return _$CryptomodelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CryptomodelToJson(this);
}
