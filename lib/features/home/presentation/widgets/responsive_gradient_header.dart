// gradient_header.dart
import 'package:flutter/material.dart';
import 'package:image2vid/core/utils/app_colors.dart';

class ResponsiveGradientHeader extends StatelessWidget {
  final Widget child;

  const ResponsiveGradientHeader({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipPath(
        clipper: CurveClipper(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 3, 36, 144), AppColors.kThirdColor],
            ),
          ),
          child: IntrinsicHeight(
            child: Column(children: [child, const SizedBox(height: 20)]),
          ),
        ),
      ),
    );
  }
}

// Custom clipper for the curved header
class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);

    path.quadraticBezierTo(
      size.width / 2,
      size.height + 20,
      size.width,
      size.height - 50,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
