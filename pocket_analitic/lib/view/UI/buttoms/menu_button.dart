import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final String title;
  const MenuButton({super.key, required this.title});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('I am clicked'),
      child: Text(widget.title),
    );
  }
}
