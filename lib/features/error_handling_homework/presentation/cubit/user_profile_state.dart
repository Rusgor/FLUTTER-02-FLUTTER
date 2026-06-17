import 'package:flutter_02_flutter/features/error_handling_homework/data/repository/entity/user_entity.dart';

sealed class UserProfileState {}

final class UserProfileLoading implements UserProfileState {}

final class UserProfileLoaded implements UserProfileState {
  UserProfileLoaded(this.user);

  final UserEntity user;
}

final class UserProfileError implements UserProfileState {
  UserProfileError(this.message);

  final String message;
}
