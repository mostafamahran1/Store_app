import 'package:flutter/material.dart';

import '../../constans.dart';


class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, required this.fillColor, this.isSelected = false,
  }) : super(key: key);

  final Color fillColor ;
  final bool isSelected ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: KDefalutPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? KTextColor : Colors.transparent)
      ) ,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}