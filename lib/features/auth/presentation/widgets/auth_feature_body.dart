import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_images.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class AuthFeatureBody extends StatelessWidget {
  const AuthFeatureBody({super.key, required this.authBodyWidget});
  final Widget authBodyWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset(AppImages.logo, width: 150, height: 90),
        Text(
          "FrameFlow",
          textAlign: TextAlign.center,
          style: AppStyles.bold17(
            context,
          ).copyWith(fontSize: 22, color: AppColors.kPrimaryColor),
        ),
        Gap(5),
        Text(
          "Transform Images into Videos",
          textAlign: TextAlign.center,
          style: AppStyles.regular12(
            context,
          ).copyWith(color: AppColors.kSecondaryColor),
        ),
        Gap(30),
        authBodyWidget,
        Spacer(),
      ],
    );
  }
}
