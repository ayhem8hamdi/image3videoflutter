import 'package:flutter/material.dart';

abstract class AppColors {
  static const LinearGradient krimaryGradient = LinearGradient(
    colors: [Color(0xFF2B7FFE), Color(0xFF165FFD)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Color kPrimaryColor = Color(0xFF1D388E);
  static const Color kSecondaryColor = Color(0xFF155CFD);
  static const Color kThirdColor = Color(0xFF50A3FE);
  static const Color kTextColor = Color(0xFF3A539D);
}
