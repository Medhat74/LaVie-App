import 'package:flutter/material.dart';
import 'package:life_app/src/app_colors.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({Key? key, required this.txt, required this.fontSize}) : super(key: key);

  final String txt;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(color: AppColors.KPrimaryGrayColor , fontSize: fontSize),
    );
  }
}
