import 'package:flutter/material.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';
import 'package:pocket_analitic/view/choiser_page/choiser_page.dart';
import 'package:pocket_analitic/view/create_arguments_page/create_arguments_page.dart';

class HomeMenuButtons extends StatefulWidget {
  const HomeMenuButtons({super.key});

  @override
  State<HomeMenuButtons> createState() => _HomeMenuButtonsState();
}

class _HomeMenuButtonsState extends State<HomeMenuButtons> {
  void _makeChoiseCallback() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ChoiserPage()));
  }

  void _createArgumentsCallback() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CreateArgumentsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MenuButton(
          title: 'Create Arguments',
          callback: _createArgumentsCallback,
        ),
        MenuButton(
          title: 'Make a choise',
          callback: _makeChoiseCallback,
        ),
      ],
    );
  }
}
