import 'package:flutter/material.dart';
import 'package:mybmi_calculator/constant.dart';
import 'package:mybmi_calculator/controller/home_page_controller.dart';

import 'package:provider/provider.dart';

class ResaultScreen extends StatelessWidget {
  static const routeName = 'ResaultScreen';
  // HomePageController fun = HomePageController();
  // g() => fun.getGender;
  @override
  Widget build(BuildContext context) {
    // final gender =
    //     context.select((HomePageController value) => value.getGender);
    return Scaffold(
      backgroundColor: Color(0xFF0A0F1D),
      appBar: AppBar(
        title: Text('BMI RESAULT'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HomePageController>(
              builder: (context, val, child) {
                return Text('Gender is :${val.getGender}', style: fontStyle);
              },
            ),
            SizedBox(height: 20.0),
            Text(
                'Age is :${context.select<HomePageController, int>((value) => value.getAge)}',
                style: fontStyle),
            SizedBox(height: 20.0),
            Text(
              'Your Bmi is :${context.select<HomePageController, int>((value) => value.getBmi())}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size(context).height / 15),
            Container(
              width: size(context).width / 3,
              child: FlatButton(
                  color: roseColor,
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Re-Start',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
