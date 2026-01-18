// home_screen.dart
import 'package:flutter/material.dart';
import 'package:image2vid/features/home/presentation/widgets/header_content.dart';
import 'package:image2vid/features/home/presentation/widgets/home_body_content.dart';
import 'package:image2vid/features/home/presentation/widgets/responsive_gradient_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E7FF),
      body: Stack(
        children: [
          ResponsiveGradientHeader(child: const HeaderContent()),
          Column(
            children: [
              const HeaderContent(),
              Expanded(child: HomeBodyContent()),
            ],
          ),
        ],
      ),
    );
  }
}
