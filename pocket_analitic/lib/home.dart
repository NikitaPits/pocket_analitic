import 'package:flutter/material.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MenuButton(
              title: 'Make a choise',
            ),
            MenuButton(
              title: 'Create Arguments',
            ),
          ],
        ),
      ),
    );
  }
}
