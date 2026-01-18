import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/auth/presentation/signup_view.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account yet? ",
          style: AppStyles.regular10(context),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const SignupView()),
            );
          },
          child: Text('Sign up', style: AppStyles.bold12(context)),
        ),
      ],
    );
  }
}
