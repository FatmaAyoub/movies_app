import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors_manager.dart';

abstract class AppTheme {
  static ThemeData get theme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: 'Inter',
      scaffoldBackgroundColor: ColorsManager.secondaryColor,
      appBarTheme: AppBarThemeData(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: const IconThemeData(color: ColorsManager.primaryColor),
          titleTextStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorsManager.primaryColor
          )
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w500,
          color: ColorsManager.whiteColor,
        ),
        titleMedium: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: ColorsManager.whiteColor,
        ),
        titleSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: ColorsManager.whiteColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          height: 32 / 20,
          letterSpacing: 0,
          color: Colors.white.withValues(alpha: 0.6),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        height: 61.h,
        indicatorColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return IconThemeData(
            size: 24.r,
            color: selected ? ColorsManager.primaryColor : ColorsManager.whiteColor,
          );
        }),
      ),
      colorScheme: ColorScheme.dark(
          primary: ColorsManager.primaryColor,
          secondary: ColorsManager.secondaryColor,
          tertiary: ColorsManager.greyColor,
          onPrimaryContainer: ColorsManager.whiteColor,
          error: ColorsManager.redColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
          foregroundColor: ColorsManager.secondaryColor,
          minimumSize: Size(double.infinity, 56.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorsManager.primaryColor,
          minimumSize: Size(double.infinity, 56.h),
          side: const BorderSide(color: ColorsManager.primaryColor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),

      ),
      inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsManager.greyColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      hintStyle: TextStyle(fontSize: 16.sp, color: ColorsManager.whiteColor),
      prefixIconColor: ColorsManager.whiteColor,
      suffixIconColor: ColorsManager.whiteColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide.none,
      ),
    ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        selectedColor: ColorsManager.primaryColor,
        showCheckmark: false,
        side: const BorderSide(color: ColorsManager.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: ColorsManager.primaryColor,
        ),
        secondaryLabelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: ColorsManager.secondaryColor,
        ),
      ),


  );

}