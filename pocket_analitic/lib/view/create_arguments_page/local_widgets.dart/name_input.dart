import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';

class ArgumentNameInput extends StatefulWidget {
  final Function callback;
  const ArgumentNameInput({
    super.key,
    required this.callback,
  });

  @override
  State<ArgumentNameInput> createState() => _ArgumentNameInputState();
}

class _ArgumentNameInputState extends State<ArgumentNameInput> {
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
            style: CustomTextStyle.headlineMedium16(
              c: CustomColors.mainText,
            ),
            cursorColor: CustomColors.uiTheme,
            decoration: InputDecoration(
              hintText: 'Enter an argument name',
              hintStyle: CustomTextStyle.headlineMedium16(
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
        )
      ],
    );
  }
}
