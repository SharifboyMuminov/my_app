import 'enums.dart';

class LayotModul {
  final String title;
  final String subTitle;
  final String iamge;
  final Category category;

  LayotModul(this.category, {
    required this.iamge,
    required this.subTitle,
    required this.title,
  });
}
