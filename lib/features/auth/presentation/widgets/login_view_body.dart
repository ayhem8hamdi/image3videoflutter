import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/app_images.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
        Text(
          "Transform Images into Videos",
          textAlign: TextAlign.center,
          style: AppStyles.regular11(
            context,
          ).copyWith(color: AppColors.kSecondaryColor),
        ),
        Spacer(),
      ],
    );
  }
}
