import 'package:flutter/material.dart';

double width = 0.0;
double height = 0.0;

extension Size on int {
  double get hegh => (this / 812) * height;
  double get wid => (this / 375) * width;

  SizedBox get getH => SizedBox(height: this.hegh);
  SizedBox get getW => SizedBox(width: this.wid);
}
