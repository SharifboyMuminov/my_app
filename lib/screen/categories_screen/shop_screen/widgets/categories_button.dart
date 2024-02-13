import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework_19/utils/app_colors.dart';
import 'package:homework_19/utils/size.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({super.key, required this.text, required this.onTab});

  final String text;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.hegh),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.c_FFFFFF,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24.wid, vertical: 28.hegh),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        onPressed: onTab,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.c_0A1034,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
