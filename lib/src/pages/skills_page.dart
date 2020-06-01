import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  SkillsPage({Key key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Técnicas',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '85%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.73,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'NodeJS',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '65%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'ReactJS',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '56%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              SizedBox(height: 10,),

              //* PERSONALES
              Text(
                'Personales',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Analítico',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '88%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Creativo',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '60%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Adaptable a entornos dinámicos',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '70%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: ,
                  ),
                  BounceInLeft(
                    // duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 20,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                      // child: ,
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}