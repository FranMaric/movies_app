extension NullableIntExtension on int? {
  bool get isSuccessful => this != null && this! >= 200 && this! < 300;
}
