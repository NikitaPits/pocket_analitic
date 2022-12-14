import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
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
        backgroundColor: CustomColors.greenGold,
        title: const Center(child: Text('Create arguments')),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
