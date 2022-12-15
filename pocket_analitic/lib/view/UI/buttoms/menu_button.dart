import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';

class MenuButton extends StatefulWidget {
  final String title;
  final Function callback;
  const MenuButton({super.key, required this.title, required this.callback});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.callback(),
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: CustomColors.uiTheme,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 1,
            color: CustomColors.contures,
          ),
        ),
        child: Center(
          child: Text(widget.title,
              style: CustomTextStyle.title2ExtraBold20(c: CustomColors.bg)),
        ),
      ),
    );
  }
}
