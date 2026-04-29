import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:frontend/features/auth/data/auth_repository.dart';
import 'package:frontend/features/auth/domain/models/user.dart';

final authControllerProvider = NotifierProvider<AuthController, LoginState>(
  () => AuthController(),
);

class AuthController extends Notifier<LoginState> {
  @override
  LoginState build() {
    return LoginState(
      isLoginConfirmPassObscure: false,
      isLoginPassObscure: false,
      isSignUpPassObscure: false,
      selectedRole: UserRole.user,
    );
  }

  void toggleSignUpPassObscure() {
    state = state.copyWith(isSignUpPassObscure: !state.isSignUpPassObscure);
  }

  void toggleLoginPassObscure() {
    state = state.copyWith(isLoginPassObscure: !state.isLoginPassObscure);
  }

  void toggleConfirmLoginPassObscure() {
    state = state.copyWith(
      isLoginConfirmPassObscure: !state.isLoginConfirmPassObscure,
    );
  }

  void changeUserRole(UserRole role) {
    state = state.copyWith(selectedRole: role);
  }

  Future<void> login({required String email, required String password}) async {
    final authRepo = ref.read(authRepoProvider);
    state = state.copyWith(status: AsyncLoading());
    final result = await AsyncValue.guard(() async {
      return await authRepo.login(email: email, password: password);
    });
    result.whenData((data){
      ref.read(currentUserProvider.notifier).state = data;
    });
    state = state.copyWith(status: result);
  }

  Future<void> signIn({
    required String email,
    required String name,
    required String password,
  }) async {
    final authRepo = ref.read(authRepoProvider);
    final role = state.selectedRole;

    state = state.copyWith(status: AsyncLoading());
    final result = await AsyncValue.guard(() async {
      return await authRepo.signUp(
        email: email,
        password: password,
        name: name,
        role:role,
      );
    });
   result.whenData((data){
      ref.read(currentUserProvider.notifier).state = data;
    });
    state = state.copyWith(status: result);
  }
}

class LoginState {
  final bool isSignUpPassObscure;
  final bool isLoginPassObscure;
  final bool isLoginConfirmPassObscure;
  final UserRole selectedRole;
  final AsyncValue status;
  const LoginState({
    required this.isSignUpPassObscure,
    required this.isLoginPassObscure,
    required this.isLoginConfirmPassObscure,
    required this.selectedRole,
    this.status = const AsyncData(null),
  });

  LoginState copyWith({
    bool? isSignUpPassObscure,
    bool? isLoginPassObscure,
    bool? isLoginConfirmPassObscure,
    UserRole? selectedRole,
    AsyncValue? status,
  }) {
    return LoginState(
      isSignUpPassObscure: isSignUpPassObscure ?? this.isSignUpPassObscure,
      isLoginPassObscure: isLoginPassObscure ?? this.isLoginPassObscure,
      isLoginConfirmPassObscure:
          isLoginConfirmPassObscure ?? this.isLoginConfirmPassObscure,
      selectedRole: selectedRole ?? this.selectedRole,
      status: status ?? this.status,
    );
  }
}

final currentUserProvider = StateProvider<User?>((ref)=>null);
