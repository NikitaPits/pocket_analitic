import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';

class CreateArgumentsPage extends StatefulWidget {
  const CreateArgumentsPage({super.key});

  @override
  State<CreateArgumentsPage> createState() => _CreateArgumentsPageState();
}

class _CreateArgumentsPageState extends State<CreateArgumentsPage> {
  _saveCallback() {
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
              icon: 'assets/icons/back-arrow.svg',
            ),
            Text('Creaate Arguments',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MenuButton(
                title: 'Save',
                callback: _saveCallback,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
