import 'package:flutter/material.dart';
import 'package:life_app/core/components/genreal_text.dart';
import 'package:life_app/core/utils/size_config.dart';

class TextFormFieldAuth extends StatelessWidget {
  const TextFormFieldAuth({Key? key, required this.text, required this.controller}) : super(key: key);
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: GeneralText(
            txt: text ,
            fontSize: SizeConfig.defaultSize!*2,
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
