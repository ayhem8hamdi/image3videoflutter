import 'package:flutter/material.dart';
import 'package:image2vid/features/auth/presentation/widgets/auth_feature_body.dart';
import 'package:image2vid/features/auth/presentation/widgets/login_form_card.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFeatureBody(authBodyWidget: LoginFormCard());
  }
}
