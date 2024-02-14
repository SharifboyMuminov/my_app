import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework_19/moduls.dart/enums.dart';
import 'package:homework_19/moduls.dart/moduklcha.dart';
import 'package:homework_19/repo.dart/laptop_repo.dart';
import 'package:homework_19/screen/info_screen/info_screen.dart';
import 'package:homework_19/screen/laptop_screen/widgets/laptop_button.dart';
import 'package:homework_19/utils/app_colors.dart';
import 'package:homework_19/utils/app_icons.dart';
import 'package:homework_19/utils/size.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// asdvadfv
class LaptopScreen extends StatefulWidget {
  const LaptopScreen({super.key, required this.category});

  final Category category;

  @override
  State<LaptopScreen> createState() => _LaptopScreenState();
}

class _LaptopScreenState extends State<LaptopScreen> {
  List<LayotModul> dataBases = [];

  List<String> icons = [
    AppIcons.home,
    AppIcons.searche,
    AppIcons.shoping,
    AppIcons.person,
  ];

  int activIndex = 0;

  @override
  void initState() {
    if (widget.category == Category.all) {
      dataBases = products;
    } else {
      dataBases = products
          .where((element) => element.category == widget.category)
          .toList();
    }
    dataBases.shuffle();
    super.initState();
  }

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
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                AppIcons.arrowBack,
                width: 24.wid,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.wid),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.getH,
                Text(
                  "Laptop",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.c_0A1034,
                    fontSize: 24.sp,
                  ),
                ),
                15.getH,
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.hegh, horizontal: 8.wid),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border:
                            Border.all(color: AppColors.c_A7A9BE, width: 1.wid),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Ascending price",
                            style: TextStyle(
                              color: AppColors.c_A7A9BE,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          6.getW,
                          SvgPicture.asset(
                            AppIcons.arrowTop,
                            width: 8.wid,
                          ),
                          6.getW,
                          SvgPicture.asset(
                            AppIcons.arrowButtom,
                            width: 8.wid,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Filters",
                      style: TextStyle(
                        color: AppColors.c_A7A9BE,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    6.getW,
                    SvgPicture.asset(
                      AppIcons.arrowButtom,
                      width: 8.wid,
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.kubik,
                        width: 18.wid,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          20.getH,
          Expanded(
            child: GridView.builder(
              padding:
                  EdgeInsets.symmetric(vertical: 32.hegh, horizontal: 16.wid),
              itemCount: dataBases.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.85,
                crossAxisCount: 2,
                mainAxisSpacing: 9.hegh,
                crossAxisSpacing: 9.wid,
              ),
              itemBuilder: (context, index) {
                return LaptopButton(
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return InfoScreen(modul: dataBases[index]);
                        },
                      ),
                    );
                  },
                  item: dataBases[index],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 42.wid, vertical: 12.wid),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  icons.length,
                  (index) {
                    return IconButton(
                      onPressed: () {
                        setState(() {
                          activIndex = index;
                        });
                      },
                      icon: SvgPicture.asset(
                        icons[index],
                        width: 18.wid,
                        colorFilter: ColorFilter.mode(
                          activIndex == index
                              ? AppColors.c_0001FC
                              : AppColors.c_0A1034,
                          BlendMode.srcIn,
                        ),
                      ),
                    );
                  },
                ),
              ], // Ozgardi
            ),
          ),
        ],
      ),
    );
  }
}
