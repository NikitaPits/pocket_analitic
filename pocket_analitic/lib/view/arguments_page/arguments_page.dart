import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/buttoms/custom_icon_button.dart';
import 'package:pocket_analitic/view/arguments_page/create_arguments_page/create_arguments_page.dart';
import 'package:pocket_analitic/view/arguments_page/my_arguments_page/my_arguments_page.dart';

class ArgumentsPage extends StatefulWidget {
  const ArgumentsPage({super.key});

  @override
  State<ArgumentsPage> createState() => _ArgumentsPagePageState();
}

class _ArgumentsPagePageState extends State<ArgumentsPage>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.uiTheme,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // CustomIconButton(
            //   callback: () {
            //     Navigator.pop(context);
            //   },
            //   icon: 'assets/icons/back-arrow.svg',
            // ),
            const SizedBox(
              width: 30,
            ),
            Text('Arguments',
                style: CustomTextStyle.title1ExtraBold24(c: CustomColors.bg)),
            CustomIconButton(
              callback: () {},
              icon: 'assets/icons/icons8-info-50.svg',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                color: CustomColors.uiTheme,
                padding: const EdgeInsets.only(bottom: 5, left: 8, right: 8),
                height: 50,
                child: TabBar(
                    labelStyle: CustomTextStyle.title2SemiBold20(),
                    labelColor: CustomColors.mainText,
                    unselectedLabelColor: CustomColors.bg,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColors.bg,
                    ),
                    controller: _controller,
                    tabs: const [
                      Tab(
                        child: Text('My collection'),
                      ),
                      Tab(child: Text('Add argument')),
                    ])),
            Expanded(
              flex: 9,
              child:
                  TabBarView(controller: _controller, children: const <Widget>[
                MyArgumentsPage(),
                CreateArgumentsPage(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
