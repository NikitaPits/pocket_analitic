import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';

class CustomRangeInput extends StatefulWidget {
  const CustomRangeInput({super.key});

  @override
  State<CustomRangeInput> createState() => _CustomRangeInputState();
}

class _CustomRangeInputState extends State<CustomRangeInput> {
  late double _sliderValue;
  @override
  void initState() {
    _sliderValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        'Some atribute',
                        style: CustomTextStyle.title2SemiBold20(
                            c: CustomColors.mainText),
                      ),
                    ),
                    Slider(
                      value: _sliderValue,
                      activeColor: CustomColors.mainText,
                      inactiveColor: CustomColors.vivaMagenta,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      max: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 30,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: CustomColors.uiTheme,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: CustomColors.contures)),
                child: Text(
                  _sliderValue.round().toString(),
                  style: CustomTextStyle.title2ExtraBold20(
                    c: CustomColors.bg,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
