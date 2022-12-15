import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/home_page_widgets/home_manu_buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      appBar: AppBar(
        backgroundColor: CustomColors.uiTheme,
        title: Center(
            child: Text(
          'Pocket Analitic',
          style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg),
        )),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Center(
              child: HomeMenuButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
