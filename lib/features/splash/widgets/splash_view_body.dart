import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image2vid/core/utils/app_images.dart';
import 'package:image2vid/core/utils/app_styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),

        Image.asset(
          AppImages.splashLogoPng,
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.4,
        ),

        Text(
          'FrameFlow',
          style: AppStyles.bold17(
            context,
          ).copyWith(fontSize: 35, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 9),

        Text(
          'AI Video Generation',
          style: AppStyles.regular13(context).copyWith(color: Colors.white70),
          textAlign: TextAlign.center,
        ),

        const Spacer(),
        Text(
          'Transform images into motion UI',
          style: AppStyles.bold9(context).copyWith(color: Colors.white70),
          textAlign: TextAlign.center,
        ),
        Gap(40),
      ],
    );
  }
}
