import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/auth/presentation/login_view.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? ', style: AppStyles.regular10(context)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const LoginView()),
            );
          },
          child: Text('Login', style: AppStyles.bold12(context)),
        ),
      ],
    );
  }
}
