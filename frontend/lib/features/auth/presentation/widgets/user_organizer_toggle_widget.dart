import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/features/auth/domain/models/user.dart';

import '../../../../core/theme/colors.dart';
import '../providers/login_controller.dart';


class RoleToggleWidget extends ConsumerWidget {
  const RoleToggleWidget({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final selectedRole = ref.watch(authControllerProvider.select((s)=>s.selectedRole));
    final controller = ref.read(authControllerProvider.notifier);
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.backgroundPrimary,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.borderSoft),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () =>
                controller.changeUserRole(UserRole.user)
              ,
              child: Container(
                decoration: BoxDecoration(
                  color: selectedRole == UserRole.user
                      ? AppColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm an Attendee",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedRole == UserRole.user
                        ? AppColors.backgroundPrimary
                        : AppColors.textSecondary,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap:() =>
                  controller.changeUserRole(UserRole.organizer),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedRole == UserRole.organizer
                      ? AppColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm an Organizer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedRole == UserRole.organizer
                        ? AppColors.backgroundPrimary
                        : AppColors.textSecondary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
