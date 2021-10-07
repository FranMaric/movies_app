import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final userStateNotifierProvider = StateNotifierProvider((ref) => UserStateNotifier(User.initial()));

class UserStateNotifier extends StateNotifier<User> {
  UserStateNotifier(User state) : super(state);
}

@freezed
class User {
  User({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory User.initial() => User(id: 'zero', name: 'none');
}
