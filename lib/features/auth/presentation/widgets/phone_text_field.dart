import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' Phone Number', style: AppStyles.regular11(context)),
        const Gap(6),
        const Gap(8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: '+216 12345678',
              hintStyle: AppStyles.regular13(
                context,
              ).copyWith(color: const Color(0xFF9CA3AF), fontSize: 14),
              prefixIcon: Icon(
                Icons.phone_outlined,
                color: AppColors.kTextColor,
                size: 20,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 11,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: AppColors.kSecondaryColor,
                  width: 1.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FormCardTitle extends StatelessWidget {
  const FormCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create Account',
      style: AppStyles.bold17(
        context,
      ).copyWith(fontSize: 22, color: AppColors.kPrimaryColor),
    );
  }
}
