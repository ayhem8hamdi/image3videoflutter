import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_styles.dart';

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
          ).copyWith(color: const Color.fromARGB(255, 9, 42, 150)),
        ),
        const Gap(5),
        Text(
          'Upload an image and transform it into a\nstunning video with AI',
          textAlign: TextAlign.center,
          style: AppStyles.regular12(
            context,
          ).copyWith(color: AppColors.kTextColor),
        ),
      ],
    );
  }
}
