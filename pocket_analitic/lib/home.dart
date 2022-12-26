import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/view/arguments_page/arguments_page.dart';
import 'package:pocket_analitic/view/choiser_page/choiser_page.dart';
import 'package:pocket_analitic/view/welcome_page/welcome_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller = PageController(initialPage: 0, keepPage: true);
  int _pageIndex = 0;
  @override
  void initState() {
    _pageIndex = 0;
    super.initState();
  }

  _bottomControlsTapHandler(int i) {
    setState(() {
      _pageIndex = i;
    });
    _controller.animateToPage(i,
        duration: Duration(milliseconds: 200), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: PageView(
        controller: _controller,
        // physics: NeverScrollableScrollPhysics(),
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
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   onTap: _bottomControlsTapHandler,
      //   currentIndex: _pageIndex,
      //   items: [
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(CustomIcons.feed),
      //     //     label: AppLocalizations.of(context).feed),
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(CustomIcons.trophy),
      //     //     label: AppLocalizations.of(context).kidsActivity),
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(CustomIcons.trophy),
      //     //     label: AppLocalizations.of(context).kidsActivity),
      //   ],
      // ),
    );
  }
}
