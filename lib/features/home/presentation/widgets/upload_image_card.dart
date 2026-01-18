// upload_image_card.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/animations/reusable_floating_animation_widget.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_images.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class UploadImageCard extends StatelessWidget {
  const UploadImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Reusable floating animation
          FloatingAnimationWidget(child: Image.asset(AppImages.uploadImage)),
          const Gap(15),
          Text(
            'Upload an Image',
            style: AppStyles.regular13(
              context,
            ).copyWith(color: AppColors.kSecondaryColor, fontSize: 17),
          ),
          const Gap(6),
          Text(
            'Drag & drop or click to browse',
            style: AppStyles.light10(
              context,
            ).copyWith(color: AppColors.kPrimaryColor, fontSize: 12),
          ),
          const Gap(4),
          Text(
            'Supports JPG, PNG, GIF',
            style: AppStyles.light9(context).copyWith(color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
