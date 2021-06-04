import 'package:flutter/material.dart';
import 'package:mybmi_calculator/controller/home_page_controller.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';

class BuildHeightContainer extends StatelessWidget {
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
            Text('HEIGHT', style: fontStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Selector<HomePageController, double>(
                  selector: (_, provider) => provider.getHeight,
                  builder: (BuildContext context, value, Widget child) =>
                      Text(value.round().toString(), style: boldStyle),
                ),
                SizedBox(width: 5.0),
                Text(
                  'cm',
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
            Consumer<HomePageController>(
              builder: (BuildContext context, p, _) => Slider(
                value: p.getHeight,
                max: 250.0,
                min: 80.0,
                activeColor: roseColor,
                onChanged: (newHeight) {
                  p.heightFunction(newHeight);
                },
              ),
            ),

            // Selector<HomePageController, double>(
            //   //i will comment this selector because i ant use 2 values not 1
            //   selector: (_, provider) => provider.getHeight,
            //   builder: (context, value, child) => Slider(
            //     value: value,
            //     max: 250.0,
            //     min: 120.0,
            //     divisions: 10,
            //     activeColor: roseColor,
            //     onChanged: (newvalue) {
            //       value = newvalue;
            //       print(' your newval is${newvalue.toInt()}');
            //       print(' your value is${value.toInt()}');
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
