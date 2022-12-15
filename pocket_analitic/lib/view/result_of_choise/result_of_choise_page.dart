import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  _acceptCallback() {
    Navigator.pop(context);
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
                icon: 'assets/icons/back-arrow.svg'),
            Text('Results',
                style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg)),
            SvgPicture.asset(
              'assets/icons/icons8-info-100.svg',
              color: CustomColors.bg,
              height: 35,
              width: 35,
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
              MenuButton(
                title: 'Accept result',
                callback: _acceptCallback,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
