import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';

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
          color: CustomColors.greenGold,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 1,
            color: CustomColors.greenGoldDark,
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
