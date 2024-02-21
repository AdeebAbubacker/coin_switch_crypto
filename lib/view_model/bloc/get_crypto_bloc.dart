import 'package:bloc/bloc.dart';
import 'package:coinswitch_crypto/core/models/cryptomodel/cryptomodel.dart';
import 'package:coinswitch_crypto/core/models/failure/mainfailure.dart';
import 'package:coinswitch_crypto/core/services/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_crypto_event.dart';
part 'get_crypto_state.dart';
part 'get_crypto_bloc.freezed.dart';

class GetCryptoBloc extends Bloc<GetCryptoEvent, GetCryptoState> {
  final ApiService apiService;
  GetCryptoBloc(this.apiService) : super(GetCryptoState.initial()) {
    on<GetMycrypto>((event, emit) async {
       emit(GetCryptoState(
          isLoading: true,
          isError: false,
          cryptomodel: Cryptomodel(),
          successorFailure: None(),
        ));
      try {
        final response = await apiService.getCrypto();
        emit(GetCryptoState(
          isLoading: false,
          isError: false,
          cryptomodel: response,
          successorFailure: optionOf(right(response)),
        ));
        print('haaaaaaaaaaaaaaaaaaaaaaaaaaaaaai');
        print(response.crypto!.length);
      } catch (e) {
        emit(GetCryptoState(
          isLoading: false,
          isError: true,
          cryptomodel: Cryptomodel(),
          successorFailure:
              optionOf(left(MainFailure.clientFailure(message: e.toString()))),
        ));
      }
    });
  }
}
