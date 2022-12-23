import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';

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
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
              height: 32,
              child: TabBar(
                  labelStyle: CustomTextStyle.headlineSemiBold16(),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: const BoxDecoration(
                    color: CustomColors.uiTheme,
                  ),
                  controller: _controller,
                  tabs: const [
                    Tab(
                      child: Text('My collection'),
                    ),
                    Tab(child: Text('Create new')),
                  ])),
          Expanded(
            flex: 9,
            child: TabBarView(controller: _controller, children: const <Widget>[
              ArgumentsPage(),
              ArgumentsPage(),
            ]),
          ),
        ],
      ),
    );
  }
}
