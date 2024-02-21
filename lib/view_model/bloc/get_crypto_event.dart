part of 'get_crypto_bloc.dart';

@freezed
class GetCryptoEvent with _$GetCryptoEvent {
  const factory GetCryptoEvent.started() = _Started;
    const factory GetCryptoEvent.getcrypto() = GetMycrypto;
}