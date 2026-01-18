import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(20),
          // Title section
          TitleSection(),
          const Gap(30),
          // Upload card
          UploadImageCard(),
          const Gap(16),
          // Generate button
          GenerateVideoButton(),
          const Gap(16),
          // Action buttons row
          ActionButtonsRow(),
          const Gap(20),
        ],
      ),
    );
  }
}

// title_section.dart

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create Amazing Videos',
          textAlign: TextAlign.center,
          style: AppStyles.bold17(
            context,
          ).copyWith(fontSize: 22, color: const Color(0xFF1F2937)),
        ),
        const Gap(8),
        Text(
          'Upload an image and transform it into a\nstunning video with AI',
          textAlign: TextAlign.center,
          style: AppStyles.regular13(
            context,
          ).copyWith(color: AppColors.kSecondaryColor),
        ),
      ],
    );
  }
}

// upload_image_card.dart

class UploadImageCard extends StatelessWidget {
  const UploadImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
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
          // Upload icon
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.kSecondaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.upload_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
          const Gap(16),
          // Upload text
          Text(
            'Upload an Image',
            style: AppStyles.bold17(
              context,
            ).copyWith(color: AppColors.kSecondaryColor, fontSize: 16),
          ),
          const Gap(8),
          // Drag & drop text
          Text(
            'Drag & drop or click to browse',
            style: AppStyles.regular13(
              context,
            ).copyWith(color: AppColors.kSecondaryColor),
          ),
          const Gap(4),
          // Supported formats
          Text(
            'Supports JPG, PNG, GIF',
            style: AppStyles.regular11(
              context,
            ).copyWith(color: Colors.grey[500], fontSize: 11),
          ),
        ],
      ),
    );
  }
}

// generate_video_button.dart

class GenerateVideoButton extends StatelessWidget {
  const GenerateVideoButton({super.key});

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

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ActionButton(
            icon: Icons.upload_outlined,
            label: 'Upload',
            onTap: () {
              // TODO: Handle upload
            },
          ),
        ),
        const Gap(12),
        Expanded(
          child: ActionButton(
            icon: Icons.auto_awesome,
            label: 'Generate',
            onTap: () {
              // TODO: Handle generate
            },
          ),
        ),
        const Gap(12),
        Expanded(
          child: ActionButton(
            icon: Icons.download_outlined,
            label: 'Download',
            onTap: () {
              // TODO: Handle download
            },
          ),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: AppColors.kSecondaryColor, size: 24),
            const Gap(6),
            Text(
              label,
              style: AppStyles.regular13(context).copyWith(
                color: AppColors.kPrimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
