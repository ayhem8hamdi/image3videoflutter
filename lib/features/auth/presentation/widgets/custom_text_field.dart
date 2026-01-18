import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    required this.icon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.regular11(context)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: AppStyles.regular13(
                context,
              ).copyWith(color: const Color(0xFF9CA3AF), fontSize: 14),
              prefixIcon: Icon(icon, color: AppColors.kTextColor, size: 20),
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
