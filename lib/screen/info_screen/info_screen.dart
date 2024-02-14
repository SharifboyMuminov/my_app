import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework_19/moduls.dart/moduklcha.dart';
import 'package:homework_19/utils/app_icons.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.modul});

  final LayotModul modul;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppIcons.arrowBack,
            width: 20.w,
          ),
        ),
        title: Text(
          "hello",
          style: TextStyle(fontSize: 20.sp, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity),
          Center(
            child: Image.asset(modul.iamge, width: 300),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  modul.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 28.sp,
                  ),
                ),
                SizedBox(height: 10),
                Text(modul.subTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
