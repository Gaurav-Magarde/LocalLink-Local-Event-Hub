import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/features/auth/domain/auth_repo_interface.dart';
import 'package:frontend/features/auth/domain/models/user.dart';

import '../../../core/utils/constants/api_constants.dart';

final authRepoProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(
    dio: Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 5), // Don't hang forever
        receiveTimeout: const Duration(seconds: 3),
        headers: {'Content-Type': 'application/json'},
      ),
    ),
  ),
);

class AuthRepository implements AuthRepoInterface {
  const AuthRepository({required this.dio});
  final Dio dio;
  @override
  Future<User> login({required String email, required String password}) async {
    final response = await dio.put(
      "/auth/login",
      data: {"email": email, "password": password},
    );
    final data = response.data['data']['user'] as Map<String, dynamic>?;
    if (data == null) {
      throw Exception('Login failed! Something went wrong');
    }
    final user = User.fromMap(data);
    return user;
  }

  @override
  Future<User> signUp({
    required String email,
    required String name,
    required UserRole role,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '/auth/register',
        data: {
          "name": name,
          "email": email,
          "password": password,
          "role": role.name.toString().toUpperCase(),
        },
      );
      final data = response.data['data']['user'] as Map<String, dynamic>?;
      if (data == null) {
        throw Exception('Sign In failed! Something went wrong');
      }
      final user = User.fromMap(data);
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }
}
// qazxcvbnmlp
// q23edvgy78ijn
// qazxvhu890plm