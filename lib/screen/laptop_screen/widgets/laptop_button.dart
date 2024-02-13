import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework_19/moduls.dart/moduklcha.dart';
import 'package:homework_19/utils/app_colors.dart';
import 'package:homework_19/utils/size.dart';

class LaptopButton extends StatelessWidget {
  const LaptopButton({super.key, required this.onTab, required this.item});

  final LayotModul item;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.c_FFFFFF,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 40,
            spreadRadius: 1,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onTab,
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(
              left: 12.wid, right: 12.wid, top: 40.hegh, bottom: 16.hegh),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.iamge,
              width: 119.wid,
              height: 100.hegh,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.c_0A1034,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            3.getH,
            Text(
              item.subTitle,
              style: TextStyle(
                color: AppColors.c_0001FC,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
