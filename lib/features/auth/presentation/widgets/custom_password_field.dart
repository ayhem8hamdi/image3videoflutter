import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    required this.icon,
  });
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final IconData icon;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: AppStyles.regular11(context)),
        Gap(6),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: TextField(
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: const TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
              ),
              prefixIcon: Icon(
                widget.icon,
                color: AppColors.kTextColor,
                size: 20,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.kTextColor,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
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
