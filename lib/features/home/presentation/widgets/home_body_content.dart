import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/home/presentation/widgets/home_title_section.dart';
import 'package:image2vid/features/home/presentation/widgets/upload_image_card.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(30),
          const TitleSection(),
          const Gap(26),
          UploadImageCard(),
          const Gap(16),
          GenerateVideoButton(),
          const Gap(16),
          ActionButtonsRow(),
          const Gap(20),
        ],
      ),
    );
  }
}

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
