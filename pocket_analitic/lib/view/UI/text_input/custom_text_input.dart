import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';

class CustomTextInput extends StatefulWidget {
  final Function callback;
  final String hintText;
  const CustomTextInput(
      {super.key, required this.callback, this.hintText = 'Type here...'});

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            onChanged: (value) {
              widget.callback(value);
            },
            style: CustomTextStyle.title2SemiBold20(
              c: CustomColors.mainText,
            ),
            cursorColor: CustomColors.uiTheme,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: CustomTextStyle.title2SemiBold20(
                c: CustomColors.hintText,
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: CustomColors.uiTheme, width: 2),
              ),
            ),
          ),
        ),
        CustomIconButton(
          icon: 'assets/icons/icons8-info-50.svg',
          callback: () async {},
        ),
      ],
    );
  }
}
