import 'package:frontend/features/auth/domain/models/user.dart';

abstract class AuthRepoInterface {
  Future<User> login({required String email,required String password,});
  Future<User> signUp({required String email,required String name,required UserRole role,required String password,});
}