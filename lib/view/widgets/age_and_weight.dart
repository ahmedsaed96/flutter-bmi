import 'package:flutter/material.dart';


import '../../constant.dart';

class AgeAndWeight extends StatelessWidget {
  final String text1;
  final Widget number;
  final Widget incFuction;
  final Widget decFuction;
  const AgeAndWeight({
    Key key,
    this.text1,
    this.number,
    this.incFuction,
    this.decFuction,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1, style: fontStyle),
            number,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [decFuction, SizedBox(width: 10.0), incFuction],
            ),
          ],
        ),
      ),
    );
  }
}
