import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/router/app_router.dart';
import 'package:frontend/core/theme/colors.dart';
import 'package:frontend/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:frontend/features/auth/presentation/widgets/top_image_textspan_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/validators/validators,dart.dart';
import 'controllers/login_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider.select((s) => s.status), (prev, next) {
      next.when(
        data: (data) {
          print("${prev?.isLoading}  $data");
          if (prev?.isLoading == true) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('Welcome back!')));
            context.pushNamed(AppRoutes.dashboardScreenName);

          }
        },
        error: (e, s) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.toString()),
              backgroundColor: EColors.error,
            ),
          );
        },
        loading: () {},
      );
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthScreenHeader(
              imagePath: 'assets/images/sign_up_img.png',
              text: "Login to Access your\n",
              textSpan: "Events And Tickets",
            ),
SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    AuthTextField(
                      validator: (val) => Validators.validateField(
                        val: val,
                        fieldName: "email",
                        minLength: 5,
                      ),
                      prefixIcon: Icons.perm_identity,
                      labelText: "Enter your name",
                      controller: emailController,
                    ),
                    const SizedBox(height: 16),
                    Consumer(
                      builder: (_, ref, _) {
                        final isSelected = ref.watch(
                          authControllerProvider.select(
                            (s) => s.isLoginPassObscure,
                          ),
                        );
                        return AuthTextField(
                          validator: (val) => Validators.validateField(
                            val: val,
                            fieldName: "password",
                            minLength: 7,
                          ),
                          isObscure: !isSelected,
                          prefixIcon: Icons.lock_outline,
                          labelText: "Enter your password",
                          controller: passwordController,
                          suffixIcon: InkWell(
                            onTap: () {
                              ref
                                  .read(authControllerProvider.notifier)
                                  .toggleLoginPassObscure();
                            },
                            child: Icon(
                              isSelected
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Consumer(
                      builder: (_, ref, _) {
                        final state = ref.watch(
                          authControllerProvider.select((s) => s.status),
                        );
                        return ElevatedButton(
                          onPressed: state.isLoading
                              ? null
                              : () {
                            if(!formKey.currentState!.validate()) return;
                                  ref
                                      .read(authControllerProvider.notifier)
                                      .login(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      );
                                },
                          child: state.isLoading
                              ? CircularProgressIndicator()
                              : Text("Log in"),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.apply(color: EColors.textSecondary),
                ),
                InkWell(
                  onTap: () {
                    context.pushNamed(AppRoutes.signInScreenName);
                  },
                  child: Text(
                    "Sign up",
                    style: Theme.of(context).textTheme.titleSmall?.apply(
                      color: EColors.textPrimary,
                      fontWeightDelta: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
