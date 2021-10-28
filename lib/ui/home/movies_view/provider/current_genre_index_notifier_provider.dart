import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentGenreIndexNotifierProvider = StateNotifierProvider<_CurrentGenreIndexNotifier, int?>((ref) {
  return _CurrentGenreIndexNotifier();
});

class _CurrentGenreIndexNotifier extends StateNotifier<int?> {
  _CurrentGenreIndexNotifier() : super(0);

  void setIndex(int index) => state = index;

  void clear() => state = null;
}
