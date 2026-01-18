import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_images.dart';
import 'package:image2vid/core/utils/app_styles.dart';
import 'package:image2vid/features/home/presentation/widgets/home_title_section.dart';
import 'package:image2vid/features/home/presentation/widgets/inactive_generate_video_button.dart';
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
          const Gap(23),
          const InactiveGenerateVideoButton(),
          const Gap(22),
          ActionButtonsRow(),
          const Gap(20),
        ],
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
            icon: AppImages.uploadImageIcon,
            label: 'Upload',
            onTap: () {
              // TODO: Handle upload
            },
          ),
        ),
        const Gap(12),
        Expanded(
          child: ActionButton(
            icon: AppImages.generateImageIcon,
            label: 'Generate',
            onTap: () {
              // TODO: Handle generate
            },
          ),
        ),
        const Gap(12),
        Expanded(
          child: ActionButton(
            icon: AppImages.downloadImageIcon,
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
  final String icon;
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
            Image.asset(icon, width: 36, height: 36),
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
