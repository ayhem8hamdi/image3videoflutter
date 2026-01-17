import 'package:flutter/material.dart';

abstract class AppColors {
  static const LinearGradient kPrimaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 65, 128, 223),
      Color.fromARGB(255, 2, 48, 147),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient kSecondaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 241, 247, 255),
      Color.fromARGB(255, 172, 194, 215),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Color kPrimaryColor = Color(0xFF1D388E);
  static const Color kSecondaryColor = Color(0xFF155CFD);
  static const Color kThirdColor = Color(0xFF50A3FE);
  static const Color kTextColor = Color(0xFF3A539D);
}
