import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/theme/custom_icons.dart';
import 'package:pocket_analitic/theme/text_variables.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                TextVariables.pocketAnalitic,
                style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg),
              ),
            ),
            CustomIconButton(
              callback: () {},
              icon: CustomIcons.info,
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                margin: const EdgeInsets.only(top: 50),
                height: 250,
                width: 250,
                padding: const EdgeInsets.all(12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CustomColors.uiTheme,
                  borderRadius: BorderRadius.circular(125),
                  border: Border.all(
                    width: 2,
                    color: CustomColors.contures,
                  ),
                ),
                child: SvgPicture.asset(
                  CustomIcons.logo,
                  color: CustomColors.bg,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
