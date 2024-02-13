import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework_19/moduls.dart/enums.dart';
import 'package:homework_19/screen/laptop_screen/laptop_screen.dart';
import 'package:homework_19/utils/app_colors.dart';
import 'package:homework_19/utils/app_icons.dart';
import 'package:homework_19/utils/size.dart';

import 'widgets/categories_button.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  List<String> categoriyes = [
    "All",
    "Computers",
    "Accessories",
    "Smartphones",
    "Smart objects",
    "Speakers",
  ];

  List<Category> lst = [
    Category.all,
    Category.computers,
    Category.accessories,
    Category.smartphones,
    Category.smart_objects,
    Category.speakers,
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.c_FDFEFF,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          52.getH,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.wid),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.arrowBack,
                width: 24.wid,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.wid),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.getH,
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.c_0A1034,
                      fontSize: 24.sp,
                    ),
                  ),
                  8.getH,
                  ...List.generate(
                    categoriyes.length,
                    (index) => CategoriesButton(
                      text: categoriyes[index],
                      onTab: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LaptopScreen(category: lst[index]);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 42.wid, vertical: 12.wid),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    width: 18.wid,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.searche,
                    width: 18.wid,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.shoping,
                    width: 18.wid,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.person,
                    width: 18.wid,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
