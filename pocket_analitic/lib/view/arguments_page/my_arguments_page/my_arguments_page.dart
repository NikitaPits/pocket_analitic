import 'package:flutter/material.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';

class MyArgumentsPage extends StatefulWidget {
  const MyArgumentsPage({super.key});

  @override
  State<MyArgumentsPage> createState() => _MyArgumentsPageState();
}

class _MyArgumentsPageState extends State<MyArgumentsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: CustomIconButton(
          callback: () {},
          size: 100,
          icon: 'assets/icons/plus.svg',
        ),
      ),
    );
  }
}
