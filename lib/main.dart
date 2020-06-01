import 'package:cv_app/src/pages/detalle_portfolio_page.dart';
import 'package:cv_app/src/pages/menu_page.dart';
import 'package:cv_app/src/pages/skills_page.dart';
import 'package:cv_app/src/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Avenir LT Std'),
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae',
      routes: {
        'welcome'       :   (BuildContext context) => WelcomePage(),
        'home'       :   (BuildContext context) => MenuPage(),
        'skills'       :   (BuildContext context) => SkillsPage(),
        'detallePortfolio'       :   (BuildContext context) => DetallePortfolio(),
      },
      initialRoute: 'welcome',
    );
  }
}