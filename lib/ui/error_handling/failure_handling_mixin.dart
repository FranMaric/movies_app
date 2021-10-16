import 'package:flutter/material.dart';
import 'package:movie_app/domain/failure.dart';

mixin FailureHandlingMixin on Widget {
  void showSnackBarMessage({
    required BuildContext context,
    required Failure failure,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(
          failure.toString(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
