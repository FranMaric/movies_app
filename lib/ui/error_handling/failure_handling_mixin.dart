import 'package:flutter/material.dart';
import 'package:movie_app/domain/failure.dart';

/// Inspired by https://github.com/DMesek/cool_companies/blob/master/lib/common/presentation/failure_handling_mixin.dart
mixin FailureHandlingMixin on Widget {
  void displayAppropriateMessage({
    required BuildContext context,
    required Failure failure,
  }) {
    failure.when(
      generic: (message) => displaySnackbar(context, message),
      noNetwork: () => displaySnackbar(context, 'Op, nema interneta!'),
      unauthorized: () => displaySnackbar(context, 'Op, nemas pristup!'),
      serverError: () => displaySnackbar(context, 'Backend je opet zeznuo!'),
    );
  }

  void displaySnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(
          message,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
