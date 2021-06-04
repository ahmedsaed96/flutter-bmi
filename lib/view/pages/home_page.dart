import 'package:flutter/material.dart';
import 'package:mybmi_calculator/constant.dart';
import 'package:mybmi_calculator/controller/home_page_controller.dart';
import 'package:mybmi_calculator/view/widgets/age_and_weight.dart';
import 'package:mybmi_calculator/view/widgets/button.dart';
import 'package:mybmi_calculator/view/widgets/gender_container.dart';
import 'package:mybmi_calculator/view/widgets/height_container.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0A0F1D),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('BMI CAlCULATOR'),
        ),
        body: Column(
          children: [
            //first Row
            Expanded(
              child: Row(
                children: [
                  Consumer<HomePageController>(
                    builder: (context, value, child) => GenderContainer(
                      'MALE',
                      AssetImage(
                        'assets/images/gender_female.png',
                      ),
                      color: !value.isMale ? secondaryColor : Colors.grey[800],
                      function: () => value.changeGender(),
                    ),
                  ),
                  Consumer<HomePageController>(
                    builder: (context, value, child) => GenderContainer(
                      'FEMALE',
                      AssetImage(
                        'assets/images/gender_male.png',
                      ),
                      color: value.isMale ? secondaryColor : Colors.grey[800],
                      function: () => value.changeGender(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size(context).height / 70),
            //second Row
            BuildHeightContainer(),
            //third Row
            Expanded(
              child: Row(
                children: [
                  AgeAndWeight(
                    text1: 'WEIGHT',
                    number: Selector<HomePageController, int>(
                      selector: (_, provider) => provider.getWeight,
                      builder: (context, value, child) => Text(
                        value.toString(),
                        style: boldStyle,
                      ),
                    ),
                    decFuction: Consumer<HomePageController>(
                        builder: (context, provider, child) => Container(
                              child: FloatingActionButton(
                                heroTag: 'decreaseWeight',
                                mini: true,
                                backgroundColor: textColor,
                                onPressed: () => provider.decreaseWeight(),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                            )),
                    incFuction: Consumer<HomePageController>(
                      builder: (context, provider, child) =>
                          FloatingActionButton(
                        heroTag: 'increaseWeight',
                        mini: true,
                        backgroundColor: textColor,
                        onPressed: () => provider.increaseWeight(),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ),
                  AgeAndWeight(
                    text1: 'AGE',
                    number: Selector<HomePageController, int>(
                      selector: (_, provider) => provider.getAge,
                      builder: (context, value, child) => Text(
                        value.toString(),
                        style: boldStyle,
                      ),
                    ),
                    decFuction: Consumer<HomePageController>(
                        builder: (context, provider, child) => Container(
                              child: FloatingActionButton(
                                heroTag: 'decreaseAge',
                                mini: true,
                                backgroundColor: textColor,
                                onPressed: () => provider.decreaseAge(),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                            )),
                    incFuction: Consumer<HomePageController>(
                      builder: (context, provider, child) =>
                          FloatingActionButton(
                        heroTag: 'increaseAge',
                        mini: true,
                        backgroundColor: textColor,
                        onPressed: () => provider.increaseAge(),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size(context).height / 60),
            BuildButton(),
          ],
        ),
      ),
    );
  }
}
