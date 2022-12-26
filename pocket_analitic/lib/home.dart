import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/theme/custom_icons.dart';
import 'package:pocket_analitic/view/arguments_page/arguments_page.dart';
import 'package:pocket_analitic/view/choiser_page/choiser_page.dart';
import 'package:pocket_analitic/view/welcome_page/welcome_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller =
      PageController(initialPage: 0, keepPage: true);
  int _pageIndex = 0;
  @override
  void initState() {
    _pageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        children: const [
          WelcomePage(),
          ArgumentsPage(),
          ChoiserPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: CustomColors.uiTheme,
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomButton(0, CustomIcons.home, 'Home'),
                _bottomButton(1, CustomIcons.arguments, 'Arguments'),
                _bottomButton(2, CustomIcons.scales, 'Calculation'),
              ],
            ),
          )),
    );
  }

  _bottomButton(int currentPage, String icon, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _pageIndex = currentPage;
        });
        _controller.animateToPage(currentPage,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      },
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 35,
              height: 35,
              color: _pageIndex == currentPage
                  ? CustomColors.mainText
                  : CustomColors.bg,
            ),
            Text(
              title,
              style: CustomTextStyle.caption1Regular13(
                c: _pageIndex == currentPage
                    ? CustomColors.mainText
                    : CustomColors.bg,
              ),
            )
          ],
        ),
      ),
    );
  }
}
