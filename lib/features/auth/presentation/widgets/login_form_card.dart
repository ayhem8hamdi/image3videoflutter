import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_form_button.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_password_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:image2vid/features/auth/presentation/widgets/form_container.dart';

class LoginFormCard extends StatefulWidget {
  const LoginFormCard({super.key});

  @override
  State<LoginFormCard> createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    //handle cubit trigger
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return FormCardContainer(
      screenWidth: screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Welcome Back',
            style: AppStyles.bold17(
              context,
            ).copyWith(color: AppColors.kPrimaryColor),
          ),
          const SizedBox(height: 18),
          CustomTextField(
            label: ' Email',
            placeholder: 'Enter your email',
            controller: _emailController,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomPasswordField(
            label: ' Password',
            placeholder: 'Enter your password',
            controller: _passwordController,
            icon: Icons.lock_outline,
          ),
          const SizedBox(height: 24),
          CustomButton(
            text: 'Login',
            icon: Icons.login,
            onPressed: _handleLogin,
          ),
          const SizedBox(height: 16),
          const DontHaveAccountWidget(),
        ],
      ),
    );
  }
}
