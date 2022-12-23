import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';
import 'package:pocket_analitic/view/choiser_page/local_widgets/range_input.dart';
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
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.uiTheme,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              callback: () {
                Navigator.pop(context);
              },
              icon: 'assets/icons/back-arrow.svg',
            ),
            Text('Lets Calculate',
                style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg)),
            CustomIconButton(
              callback: () {},
              icon: 'assets/icons/icons8-info-50.svg',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomRangeInput(
                title: 'Coast',
              ),
              CustomRangeInput(
                title: 'Look',
              ),
              CustomRangeInput(
                title: 'Needle',
              ),
              CustomRangeInput(
                title: 'Touch expiriance',
              ),
              CustomRangeInput(
                title: 'Usability',
              ),
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
