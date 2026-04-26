import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/theme/colors.dart';
import 'package:frontend/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:frontend/features/auth/presentation/widgets/top_image_textspan_widget.dart';
import 'package:frontend/features/auth/presentation/widgets/user_organizer_toggle_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../../../core/utils/validators/validators,dart.dart';
import 'controllers/login_controller.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    confirmPasswordController = TextEditingController();
    formKey = GlobalKey();
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ref.listen(authControllerProvider.select((s)=>s.status), (prev,next){
      next.when(data: (data){
        if (prev?.isLoading == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Welcome back!')),
          );
        context.pushNamed(AppRoutes.dashboardScreenName);
        }
      }, error: (e,s){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: EColors.error,
          ),
        );
      }, loading: (){},);
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [

            AuthScreenHeader(
              imagePath: 'assets/images/sign_up_img.png',
              text: "Sign Up to Explore and\n",
              textSpan: "Book Events",
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    AuthTextField(
                      validator: (val) => Validators.validateField(
                        val: val,
                        fieldName: "Name",
                        minLength: 2,
                      ),
                      controller: nameController,
                      prefixIcon: Icons.perm_identity,
                      labelText: "Enter your name",
                    ),
                    SizedBox(height: 16),
                    AuthTextField(
                      controller: emailController,
                      validator: (val) => Validators.validateField(
                        val: val,
                        fieldName: "email",
                        minLength: 2,
                      ),
                      prefixIcon: Icons.email_outlined,
                      labelText: "Enter your mail",
                    ),
                    SizedBox(height: 16),
                    Consumer(
                      builder: (_, ref, _) {
                        final isSelected = ref.watch(
                          authControllerProvider.select(
                            (s) => s.isSignUpPassObscure,
                          ),
                        );
                        return AuthTextField(
                          controller: passwordController,
                          validator: (val) => Validators.validateField(
                            val: val,
                            fieldName: "Password",
                            minLength: 8,
                          ),
                          isObscure: !isSelected,
                          prefixIcon: Icons.lock_outline,
                          labelText: "Enter your password",
                          suffixIcon: InkWell(
                            onTap: () {
                              ref
                                  .read(authControllerProvider.notifier)
                                  .toggleSignUpPassObscure();
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
                    SizedBox(height: 16),
                    Consumer(
                      builder: (_, ref, _) {
                        final isSelected = ref.watch(
                          authControllerProvider.select(
                            (s) => s.isLoginConfirmPassObscure,
                          ),
                        );
                        return AuthTextField(
                          controller: confirmPasswordController,
                          validator: (val) => Validators.validateField(
                            val: val,
                            fieldName: "confirm password",
                            minLength: 8,
                          ),
                          isObscure: !isSelected,
                          prefixIcon: Icons.lock_outline,
                          labelText: "Confirm password",
                          suffixIcon: InkWell(
                            onTap: () {
                              ref
                                  .read(authControllerProvider.notifier)
                                  .toggleConfirmLoginPassObscure();
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
                    const RoleToggleWidget(),
                    SizedBox(height: 16),
                    Consumer(
                      builder : (_,ref,_){
                        final state = ref.watch(authControllerProvider.select((s)=>s.status));
                        return ElevatedButton(
                          onPressed: state.isLoading?null: () {
                            if(!formKey.currentState!.validate()) return;
                            ref.read(authControllerProvider.notifier)
                                .signIn(
                              email: emailController.text,
                              name: nameController.text,
                              password: confirmPasswordController.text,
                            );
                          },
                          child: state.isLoading ? CircularProgressIndicator() :  Text("Sign up"),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.apply(color: EColors.textSecondary),
                ),
                InkWell(
                  onTap: () {
                    context.pushNamed(AppRoutes.loginScreenName);
                  },
                  child: Text(
                    "Login",
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
