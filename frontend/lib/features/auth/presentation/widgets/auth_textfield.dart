import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class AuthTextField extends StatelessWidget {
  final String? hint;
  final String? labelText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool isObscure;
  final TextInputType? textInputType;

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator? validator;
  const AuthTextField({
    super.key,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.labelText,
    this.textInputType,
    this.isObscure = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      minLines: 1,
      keyboardType: textInputType ?? TextInputType.name,
      onChanged: onChanged,
      controller: controller,
      obscureText: isObscure,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 20,
        ),
        filled: true,
        fillColor: AppColors.backgroundPrimary,
        hintStyle: TextStyle(color: AppColors.textSecondary),
        prefixIcon: Icon(prefixIcon, color: AppColors.textSecondary),
        labelText: labelText ?? '',
        labelStyle: TextStyle(
          color: Colors.grey[700],
          overflow: TextOverflow.ellipsis,
        ),
        hint: Text(
          hint ?? labelText ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: AppColors.borderSoft),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1.5, color: AppColors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: AppColors.error),
        ),
        suffixIcon: suffixIcon,
      ),
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}
