import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.generic(String message) = _Generic;

  const factory Failure.noNetwork() = _NoNetwork;
  const factory Failure.unauthorized() = _Unauthorized;
  const factory Failure.serverError() = _ServerError;

  factory Failure.fromResponse(Response<dynamic> response) {
    if (response.data['success'] == false) {
      print('Heeej ne valjaaa');
    }

    if (response.statusCode != null) {
      if (response.statusCode! >= 500) return const Failure.serverError();
      if (response.statusCode! == 401) return const Failure.unauthorized();
    }

    return const Failure.generic('Oops something went wrong');
  }
}
