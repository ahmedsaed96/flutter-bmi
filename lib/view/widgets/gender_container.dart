import 'package:flutter/material.dart';
import 'package:mybmi_calculator/controller/home_page_controller.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';

class GenderContainer extends StatelessWidget {
  final String gender;
  final AssetImage assetImage;
  final Color color;
  final Function function;
  GenderContainer(this.gender, this.assetImage, {this.color, this.function});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<HomePageController>(
        builder: (context, value, child) => GestureDetector(
          onTap: function,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Image(image: assetImage),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    gender,
                    style: fontStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
