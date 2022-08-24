import 'package:flutter/material.dart';
import 'package:life_app/core/utils/size_config.dart';
import 'package:life_app/src/app_colors.dart';

import '../../../core/components/genreal_text.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            SizedBox(
              width: SizeConfig.screenWidth!*0.3,
              child: const Divider(
                thickness: 3,
                color: AppColors.KPrimaryGrayColor,
              ),
            ),
            GeneralText(txt: 'or continu with', fontSize: SizeConfig.defaultSize!*2,),
            SizedBox(
              width: SizeConfig.screenWidth!*0.3,
              child: const Divider(
                thickness: 3,
                color: AppColors.KPrimaryGrayColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            //todo :: google and facebook
          ],
        ),

        Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/images/treeBottom.png"),
        ),
      ],
    );
  }
}
