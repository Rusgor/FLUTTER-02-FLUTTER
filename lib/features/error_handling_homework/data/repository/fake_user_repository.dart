import 'package:flutter_02_flutter/features/error_handling_homework/data/repository/entity/user_entity.dart';
import 'package:flutter_02_flutter/features/error_handling_homework/data/repository/custom_server_error.dart';

class FakeUserRepository {
  Future<UserEntity> getUserProfile(bool shouldFail) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));

      if (shouldFail) {
        throw Exception('Server is temporarily unavailable');
      }

      return UserEntity(id: '1', name: 'Test User');
    } catch (_) {
      throw const CustomServerError();
    }
  }
}
