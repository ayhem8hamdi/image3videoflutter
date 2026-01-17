import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image2vid/core/utils/app_colors.dart';
import 'package:image2vid/core/utils/responsive_font_size.dart';

abstract class AppStyles {
  static TextStyle _baseCairo(BuildContext context) => GoogleFonts.cairo();

  // FontSize 9px
  static TextStyle light9(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 9),
    fontWeight: FontWeight.w300,
    color: AppColors.kTextColor,
  );

  static TextStyle regular9(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 9),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold9(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 9),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold9(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 9),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // FontSize 10px
  static TextStyle light10(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 10),
        fontWeight: FontWeight.w300,
        color: Colors.black,
      );

  static TextStyle regular10(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 10),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold10(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 10),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold10(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 10),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // FontSize 11px
  static TextStyle light11(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w300,
        color: Colors.black,
      );

  static TextStyle regular11(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold11(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold11(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 11),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // FontSize 12px
  static TextStyle light12(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w300,
        color: Colors.black,
      );

  static TextStyle regular12(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold12(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold12(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 12),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // FontSize 13px
  static TextStyle light13(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w300,
        color: Colors.black,
      );

  static TextStyle regular13(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold13(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold13(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 13),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // FontSize 17px
  static TextStyle light17(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w300,
        color: Colors.black,
      );

  static TextStyle regular17(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle semiBold17(BuildContext context) =>
      _baseCairo(context).copyWith(
        fontSize: responsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle bold17(BuildContext context) => _baseCairo(context).copyWith(
    fontSize: responsiveFontSize(context, fontSize: 17),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}
