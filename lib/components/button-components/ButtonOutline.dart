import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Function onPressedCallback;
  const ButtonOutline({
    Key key,
    @required this.icon,
    @required this.onPressedCallback,
    this.iconColor = AtivitiColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedCallback,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Color(0xffe8ecef),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(
            icon,
            color: iconColor,
            size: 18,
          ),
        ),
      ),
    );
  }
}
