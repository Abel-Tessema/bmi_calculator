import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'round_icon_button.dart';

class WeightOrAgeCard extends StatelessWidget {
  const WeightOrAgeCard(
      {super.key,
      required this.label,
      required this.variable,
      required this.decreaseVariable,
      required this.increaseVariable});

  final String label;
  final int variable;
  final Function() decreaseVariable;
  final Function() increaseVariable;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        color: kActiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: kLabelTextStyle),
            Text(
              variable.toString(),
              style: kNumberTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  onTap: decreaseVariable,
                ),
                SizedBox(width: 20.0),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onTap: increaseVariable,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
