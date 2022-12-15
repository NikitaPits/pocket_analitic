import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';

class CustomIconButton extends StatefulWidget {
  final String icon;
  final Function callback;
  const CustomIconButton(
      {super.key, required this.icon, required this.callback});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.callback(),
      child: SvgPicture.asset(
        widget.icon,
        color: CustomColors.bg,
        height: 30,
        width: 30,
      ),
    );
  }
}
