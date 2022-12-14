import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/view/home_page_widgets/home_manu_buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.bg,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: HomeMenuButtons(),
      ),
    );
  }
}
