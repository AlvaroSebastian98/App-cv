import 'package:cv_app/src/pages/experience_page.dart';
import 'package:cv_app/src/pages/home_page.dart';
import 'package:cv_app/src/pages/portfolio_page.dart';
import 'package:cv_app/src/pages/skills_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          // name: "Inicio",
          name: "Inicio",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        HomePage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Experiencia",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.lightGreenAccent,
        ),
        ExperiencePage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Skills",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        SkillsPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Portafolio",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        PortfolioPage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      iconMenuAppBar: Icon(Icons.menu, color: Colors.black,),
      backgroundColorMenu: Colors.black87,
      backgroundColorAppBar: Colors.greenAccent[400],
      backgroundMenu: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/bg_menu.jpeg'),
      ),
      styleAutoTittleName: TextStyle(
        color: Colors.black
      ),
      // whithAutoTittleName: false,
      screens: items,
      slidePercent: 60,
      contentCornerRadius: 40,
    );
  }
}