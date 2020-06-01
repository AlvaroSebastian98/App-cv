import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  ExperiencePage({Key key}) : super(key: key);

  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // SizedBox(height: 20),
            Container(
              width: size.width * 0.9,
              // height: 140,
              margin: EdgeInsets.only(right: size.width * 0.1),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow> [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 1.0
                  )
                ],
                borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
              ),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width * 0.9,
                    child: Flexible(
                      child: Text(
                        'Desarrollador de Aplicaciones Móviles',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: ),
                        width: size.width * 0.6,
                        child: Text(
                          'Desarrollo de aplicaciones con el SDK Flutter',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ),
                      Image(
                        width: 80,
                        image: AssetImage('assets/images/playtec.png'),
                      )
                    ],
                  )
                ],
              )
            ),

            Container(
              width: size.width * 0.9,
              // height: 140,
              margin: EdgeInsets.only(left: size.width * 0.1),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow> [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 1.0
                  )
                ],
                borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
              ),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: size.width * 0.9,
                    child: Flexible(
                      child: Text(
                        'Institute of Electrical and Electronics Engineers',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        width: 60,
                        image: AssetImage('assets/images/ieee.jpg'),
                      ),
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: ),
                        width: size.width * 0.6,
                        child: Text(
                          'Fomentar el avance de la tecnología con charlas y talleres',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),

            Container(
              width: size.width * 0.9,
              // height: 140,
              margin: EdgeInsets.only(right: size.width * 0.1),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow> [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 1.0
                  )
                ],
                borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
              ),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width * 0.9,
                    child: Flexible(
                      child: Text(
                        'Analista',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: ),
                        width: size.width * 0.6,
                        child: Text(
                          'Generar gráficos del funcionamiento del préstamo bancario con Power BI',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ),
                      Image(
                        width: 80,
                        image: AssetImage('assets/images/broderjobs.png'),
                      )
                    ],
                  )
                ],
              )
            ),

            Container(
              width: size.width * 0.9,
              height: 110,
              margin: EdgeInsets.only(left: size.width * 0.1),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow> [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 1.0
                  )
                ],
                borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
              ),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 110,
                    // color: Color(4280121343),
                    decoration: BoxDecoration(
                      color: Color(4280121343),
                      boxShadow: <BoxShadow> [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 5.0),
                          spreadRadius: 1.0
                        )
                      ],
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(25)),
                    ),
                    child: Center(
                      child: Image(
                        height: 80,
                        width: 80,
                        image: AssetImage('assets/images/cocokids.png'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: size.width * 0.6,
                          child: Flexible(
                            child: Text(
                              'Hackaton HackTech COVID',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.greenAccent[700],
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: ),
                          width: size.width * 0.6,
                          child: Text(
                            'Planteamiento y prototipo de una aplicación de aprendizaje online',
                            style: TextStyle(
                              fontSize: 17
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

hexToColor(String code) {
  var hex = int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  print(hex);
}