import 'package:flutter/material.dart';
import 'package:pocket_analitic/theme/custom_colors.dart';
import 'package:pocket_analitic/theme/custom_fonts.dart';
import 'package:pocket_analitic/view/UI/slider/custom_track_shape.dart';

class CustomRangeInput extends StatefulWidget {
  final String title;
  final Function callback;
  const CustomRangeInput({
    super.key,
    this.title = '',
    required this.callback,
  });

  @override
  State<CustomRangeInput> createState() => _CustomRangeInputState();
}

class _CustomRangeInputState extends State<CustomRangeInput> {
  late double _sliderValue;
  @override
  void initState() {
    _sliderValue = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.start,
                        style: CustomTextStyle.title2SemiBold20(
                            c: CustomColors.mainText),
                      ),
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackShape: CustomTrackShape(),
                      ),
                      child: Slider(
                        value: _sliderValue,
                        activeColor: CustomColors.mainText,
                        inactiveColor: CustomColors.vivaMagenta,
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                        min: 1,
                        max: 10,
                      ),
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
