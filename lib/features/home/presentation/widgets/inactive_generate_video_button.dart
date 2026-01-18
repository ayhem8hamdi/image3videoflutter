import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class InactiveGenerateVideoButton extends StatelessWidget {
  const InactiveGenerateVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Trigger video generation
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kSecondaryColor.withOpacity(0.3),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.auto_awesome, size: 20),
            const SizedBox(width: 8),
            Text(
              'Generate Video from Image',
              style: AppStyles.regular13(context).copyWith(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
