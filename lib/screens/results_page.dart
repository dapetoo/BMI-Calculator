import 'package:bmi_app/components/bottom_button_widget.dart';
import 'package:bmi_app/components/reusable_card.dart';
import 'package:bmi_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiInterpretation;
  final String bmiTextResult;
  final String bmiAge;

  ResultPage(
      {@required this.bmiResult,
      @required this.bmiInterpretation,
      @required this.bmiTextResult,
      @required this.bmiAge});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  bmiTextResult.toUpperCase(),
                  style: kResultTextStyle,
                ),
                Text(
                  'Age: '.toUpperCase() + bmiAge.toUpperCase(),
                  style: kBMIBodyTextStyle,
                ),
                Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
                Text(bmiInterpretation,
                    textAlign: TextAlign.center, style: kBMIBodyTextStyle),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: BottomButtonWidget(
            buttonTitle: 'Re-Calculate BMI',
            onTap: () {
              Navigator.pop(context, true);
            },
          ),
        ),
      ],
    ));
  }
}
