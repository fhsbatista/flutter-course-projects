import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  static const Color unselectedColor = Color(0xFF111328);
  static const Color selectedColor = Color(0xFF1D1E33);

  final Color backgroundColor;
  final bool isSelectable;
  final bool isSelected;
  final Widget child;
  final Function onTap;

  ReusableCard(
      {this.backgroundColor = selectedColor,
      this.isSelectable = false,
      this.isSelected = false,
      this.child,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        child: this.child,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: (isSelectable == false || isSelected == true)
              ? selectedColor
              : unselectedColor,
        ),
      ),
    );
  }
}
