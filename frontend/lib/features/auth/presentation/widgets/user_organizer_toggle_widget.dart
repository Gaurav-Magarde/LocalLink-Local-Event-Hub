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
        color: EColors.backgroundPrimary,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: EColors.borderSoft),
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
                      ? EColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm an Attendee",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedRole == UserRole.user
                        ? EColors.backgroundPrimary
                        : EColors.textSecondary,
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
                      ? EColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm an Organizer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedRole == UserRole.organizer
                        ? EColors.backgroundPrimary
                        : EColors.textSecondary,
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
