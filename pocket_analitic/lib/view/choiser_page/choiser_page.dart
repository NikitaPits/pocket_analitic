import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';
import 'package:pocket_analitic/view/result_of_choise/result_of_choise_page.dart';

class ChoiserPage extends StatefulWidget {
  const ChoiserPage({super.key});

  @override
  State<ChoiserPage> createState() => _ChoiserPageState();
}

class _ChoiserPageState extends State<ChoiserPage> {
  _saveCallback() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const ResultsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      appBar: AppBar(
        backgroundColor: CustomColors.uiTheme,
        title: const Center(child: Text('Choise instrument')),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MenuButton(
                title: 'Calculate',
                callback: _saveCallback,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
