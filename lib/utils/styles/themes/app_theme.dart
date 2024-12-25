import 'package:flutter/material.dart';
import 'package:quiz_test/utils/styles/colors/app_colors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => _lightTheme();

  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() => ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteF7,
    elevatedButtonTheme: AppElevatedButtonTheme.lightTheme,
    textTheme: AppTextTheme.lightTheme,
    textButtonTheme: AppTextButtonTheme.lightTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightTheme,
    checkboxTheme: AppCheckBoxTheme.lightTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightTheme,
    progressIndicatorTheme: AppProgressIndicatorTheme.lightTheme,
    useMaterial3: true,
    popupMenuTheme: AppPopButtonTheme.lightTheme,
    dialogTheme: AppDialogTheme.lightTheme,
    dividerColor: AppColors.grey65,
  );

  static ThemeData _darkTheme() => lightTheme.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.blue39,
    elevatedButtonTheme: AppElevatedButtonTheme.darkTheme,
    textTheme: AppTextTheme.darkTheme,
    textButtonTheme: AppTextButtonTheme.darkTheme,
    inputDecorationTheme: AppInputDecorationTheme.darkTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkTheme,
    progressIndicatorTheme: AppProgressIndicatorTheme.darkTheme,
    popupMenuTheme: AppPopButtonTheme.darkTheme,
    dialogTheme: AppDialogTheme.darkTheme,
    dividerColor: AppColors.blueD4,
  );
}