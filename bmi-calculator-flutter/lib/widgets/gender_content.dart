import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class GenderContent extends StatelessWidget {
  static const Color defaultColor = kColorGray;

  final Color contentColor;
  final String label;
  final IconData icon;

  GenderContent(
      {this.contentColor = defaultColor,
      @required this.label,
      @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: contentColor,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

class MaleContent extends GenderContent {
  final Color contentColor;

  MaleContent({this.contentColor})
      : super(
            contentColor: contentColor,
            label: 'MALE',
            icon: FontAwesomeIcons.mars);
}

class FemaleContent extends GenderContent {
  final Color contentColor;

  FemaleContent({this.contentColor})
      : super(
            contentColor: contentColor,
            label: 'FEMALE',
            icon: FontAwesomeIcons.venus);
}
