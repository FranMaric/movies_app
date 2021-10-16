import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.noNetwork() = _NoNetwork;
  const factory Failure.unauthorized() = _Unauthorized;
  const factory Failure.serverError() = _ServerError;

  factory Failure.fromResponse(Response<dynamic> response) {
    // TODO: return appropriate Failure according to response
    return const Failure.serverError();
  }
}
