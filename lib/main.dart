import 'package:flutter/material.dart';

import 'package:mybmi_calculator/controller/home_page_controller.dart';

import 'package:mybmi_calculator/view/pages/home_page.dart';
import 'package:mybmi_calculator/view/pages/resault_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => HomePageController(),
         
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color(0xFF0A0F1D)),
        title: 'BMI App',
        home: HomePage(),
        routes: {
          ResaultScreen.routeName: (context) => ResaultScreen(),
        },
      ),
    );
  }
}
