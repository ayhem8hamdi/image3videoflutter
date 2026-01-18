import 'package:flutter/material.dart';

class FormCardContainer extends StatelessWidget {
  const FormCardContainer({
    super.key,
    required this.screenWidth,
    required this.child,
  });

  final double screenWidth;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: screenWidth > 600 ? 450 : double.infinity,
      ),
      margin: EdgeInsets.symmetric(horizontal: 18),
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 23),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
