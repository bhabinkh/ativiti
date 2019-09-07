import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class MapListButton extends StatelessWidget {
  final Function onPressedCallback;
  final IconData icon;
  final Color iconColor;

  const MapListButton({
    Key key,
    @required this.onPressedCallback,
    @required this.icon,
    this.iconColor = AtivitiColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AtivitiColors.coralPink,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: Offset(0, 2),
              blurRadius: 12,
              spreadRadius: 1,
            )
          ]),
      padding: EdgeInsets.all(22),
      child: Icon(
        icon,
        size: 18,
        color: iconColor,
      ),
      // icon: Icon(icon),
      // onPressed: onPressedCallback,
    );
  }
}
