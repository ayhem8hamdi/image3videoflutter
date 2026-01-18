import 'package:flutter/material.dart';
import 'package:image2vid/features/auth/presentation/widgets/auth_feature_body.dart';
import 'package:image2vid/features/auth/presentation/widgets/signup_form_card.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFeatureBody(authBodyWidget: SignUpFormCard());
  }
}
