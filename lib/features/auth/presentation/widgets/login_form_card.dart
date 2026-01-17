import 'package:flutter/material.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_form_button.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_password_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_text_field.dart';

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
    // TODO: Trigger cubit here with _emailController.text and _passwordController.text
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth > 600 ? 24.0 : 16.0;
    final cardPadding = screenWidth > 600 ? 32.0 : 24.0;

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: screenWidth > 600 ? 450 : double.infinity,
      ),
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 24),
          CustomTextField(
            label: 'Email',
            placeholder: 'Enter your email',
            controller: _emailController,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomPasswordField(
            label: 'Password',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account yet? ",
                style: TextStyle(color: Color(0xFF6B7280), fontSize: 14),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to sign up
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xFF2563EB),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
