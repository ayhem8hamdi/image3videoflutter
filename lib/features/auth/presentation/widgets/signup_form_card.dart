import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/auth/presentation/widgets/already_have_account_widget.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_form_button.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_password_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/date_text_field.dart';
import 'package:image2vid/features/auth/presentation/widgets/form_container.dart';
import 'package:image2vid/features/auth/presentation/widgets/phone_text_field.dart';
import 'package:image2vid/features/home/presentation/home_view.dart';

class SignUpFormCard extends StatefulWidget {
  const SignUpFormCard({super.key});

  @override
  State<SignUpFormCard> createState() => _SignUpFormCardState();
}

class _SignUpFormCardState extends State<SignUpFormCard> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    // i will trigger signup cubit from here
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _birthDateController.text =
            "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
      });
    }
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
          FormCardTitle(),
          const Gap(18),
          CustomTextField(
            label: ' Email',
            placeholder: 'Enter your email',
            controller: _emailController,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const Gap(14),
          CustomPasswordField(
            label: ' Password',
            placeholder: 'Create a password',
            controller: _passwordController,
            icon: Icons.lock_outline,
          ),
          const Gap(14),
          PhoneTextField(phoneController: _phoneController),
          const Gap(14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' Birth Date', style: AppStyles.regular11(context)),
              const Gap(8),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: DateTextField(
                      birthDateController: _birthDateController,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(24),
          CustomButton(
            text: 'Create Account',
            icon: Icons.person_add_outlined,
            onPressed: _handleSignUp,
          ),
          const Gap(16),
          const AlreadyHaveAccountWidget(),
        ],
      ),
    );
  }
}
