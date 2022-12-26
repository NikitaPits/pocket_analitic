import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/text_variables.dart';
import 'package:pocket_analitic/view/UI/buttoms/menu_button.dart';
import 'package:pocket_analitic/view/UI/slider/range_input.dart';
import 'package:pocket_analitic/view/UI/text_input/custom_text_input.dart';

class CreateArgumentsPage extends StatefulWidget {
  const CreateArgumentsPage({super.key});

  @override
  State<CreateArgumentsPage> createState() => _CreateArgumentsPageState();
}

class _CreateArgumentsPageState extends State<CreateArgumentsPage> {
  _saveCallback() {}

  late String _createdArgumentName;
  late List<String> createdArgumets;
  @override
  void initState() {
    createdArgumets = [];
    _createdArgumentName = '';
    super.initState();
  }

  _setArgumentName(value) {
    setState(() {
      _createdArgumentName = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextInput(
                    hintText: TextVariables.typeArgumentName,
                    callback: _setArgumentName),
                CustomRangeInput(
                  callback: () {},
                  title: TextVariables.howImportant,
                ),
              ],
            ),
            MenuButton(
              title: TextVariables.save,
              callback: _saveCallback,
            ),
          ],
        ),
      ),
    );
  }
}
