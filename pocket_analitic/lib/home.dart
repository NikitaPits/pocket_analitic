import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/theme/text_variables.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 30,
            ),
            Center(
              child: Text(
                'Pocket Analitic',
                style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg),
              ),
            ),
            CustomIconButton(
              callback: () {},
              icon: 'assets/icons/icons8-info-50.svg',
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(TextVariables.welcome,
                      style: CustomTextStyle.title1Bold24(
                          c: CustomColors.mainText)),
                  Text(
                    TextVariables.mainPageText,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyle.caption1Regular13(
                        c: CustomColors.mainText),
                  ),
                ],
              ),
              Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png')),
                ),
              ),
              const HomeMenuButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
