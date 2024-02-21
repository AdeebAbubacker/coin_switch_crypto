part of 'get_crypto_bloc.dart';

@freezed

class GetCryptoState with _$GetCryptoState {
  
    factory GetCryptoState.initial() {
    return GetCryptoState(
      isLoading: false,
      isError: false,
      cryptomodel: Cryptomodel(),
      successorFailure: const None(),
    );
  }

  const factory GetCryptoState({
    required bool isLoading,
    required bool isError,
    required Cryptomodel cryptomodel,
    required Option<Either<MainFailure, Cryptomodel>> successorFailure,
  }) = _GetCryptoState;
}
