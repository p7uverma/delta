import 'package:answer_it/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
      controller: textEditingController,
      style: TextStyle(
        color: Colours.textColor,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colours.textColor.withOpacity(0.5),
        ),
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      cursorColor: Colours.darkScaffoldColor,
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
