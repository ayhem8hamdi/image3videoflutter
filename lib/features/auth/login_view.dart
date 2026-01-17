import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.kSecondaryGradient),
        child: const LoginViewBody(),
      ),
    );
  }
}
