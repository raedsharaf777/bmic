import 'package:bmic/constant/constant.dart';
import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  var icon;
  var text;

  IconContent({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: Constant.KLabelTextStyle,
        )
      ],
    );
  }
}
