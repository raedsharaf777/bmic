import 'package:flutter/cupertino.dart';

class CreateButton extends StatelessWidget {
  var culer;
  var cardChild;
  void Function()? onpress;

  CreateButton({this.culer, this.cardChild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: culer,
          //   color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
