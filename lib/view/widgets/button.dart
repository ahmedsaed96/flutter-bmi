import 'package:flutter/material.dart';
import 'package:mybmi_calculator/view/pages/resault_screen.dart';

import '../../constant.dart';

class BuildButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size(context).height / 10,
      child: RaisedButton(
        color: roseColor,
        onPressed: () =>
            Navigator.of(context).pushNamed(ResaultScreen.routeName),
        child: Text(
          'CALCULATE',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
