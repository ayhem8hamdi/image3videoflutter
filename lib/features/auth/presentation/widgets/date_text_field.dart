import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class DateTextField extends StatelessWidget {
  const DateTextField({
    super.key,
    required TextEditingController birthDateController,
  }) : _birthDateController = birthDateController;

  final TextEditingController _birthDateController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _birthDateController,
      decoration: InputDecoration(
        hintText: 'dd/mm/aaaa',
        hintStyle: AppStyles.regular13(
          context,
        ).copyWith(color: const Color(0xFF9CA3AF), fontSize: 14),
        prefixIcon: Icon(
          Icons.calendar_today_outlined,
          color: AppColors.kThirdColor,
          size: 20,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 11,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.kSecondaryColor, width: 1.2),
        ),
      ),
    );
  }
}
