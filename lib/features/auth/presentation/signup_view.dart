import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/features/auth/presentation/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.kSecondaryGradient),
        child: const SignupViewBody(),
      ),
    );
  }
}
