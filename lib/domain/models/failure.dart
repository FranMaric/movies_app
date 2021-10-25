import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.generic(String message) = _Generic;

  const factory Failure.noNetwork() = _NoNetwork;
  const factory Failure.unauthorized() = _Unauthorized;
  const factory Failure.serverError() = _ServerError;
  const factory Failure.noTrailer(int movieId) = _NoTrailer;

  factory Failure.fromResponse(Response<dynamic> response) {
    if (response.data['success'] == false) {
      return Failure.generic(response.data['status_message'] as String);
    }

    if (response.statusCode != null) {
      if (response.statusCode! >= 500) return const Failure.serverError();
      if (response.statusCode! == 401) return const Failure.unauthorized();
    }

    return const Failure.generic('Oops something went wrong');
  }

  factory Failure.fromDioError(DioError dioError) {
    if (dioError.response != null) return Failure.fromResponse(dioError.response!);

    switch (dioError.type) {
      case DioErrorType.other:
        return const Failure.noNetwork();
      case DioErrorType.cancel:
        return const Failure.generic('Request to server was cancelled');
      case DioErrorType.connectTimeout:
        return const Failure.generic('Connection timeout with server');
      case DioErrorType.receiveTimeout:
        return const Failure.generic('Receive timeout in connection with server');
      case DioErrorType.sendTimeout:
        return const Failure.generic('Send timeout in connection with server');
      default:
        return const Failure.generic('Oops something went wrong');
    }
  }

  @override
  String toString() {
    return when(
      generic: (message) => message,
      noNetwork: () => 'Nema interneta',
      unauthorized: () => 'Nemate pristup',
      serverError: () => 'Problem sa serverom',
      noTrailer: (movieId) => 'Nema trailera za film s id: $movieId',
    );
  }
}
