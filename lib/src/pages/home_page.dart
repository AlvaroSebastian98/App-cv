import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[

              SizedBox(height: 20),

              Container(
                // color: Colors.white,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(
                    width: 2.5,
                    color: Colors.greenAccent,
                  ),
                  // borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: Image(
                  height: 180,
                  image: AssetImage('assets/images/profile.jpg'),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                padding: EdgeInsets.all(25.0),
                margin: EdgeInsets.all(15.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'HOLA!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Soy un desarrollador de aplicaciones móviles, especializado en desarrollo multiplataforma.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Experimentado con todas las etapas del ciclo de desarrollo para proyectos dinámicos.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Conocido en numerosos lenguajes de programación, incluidos JavaScript, SQL y Dart.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                // padding: EdgeInsets.all(25.0),
                // margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.blueAccent,
                    ),
                    Text('Conoce un poco más de mí en el menú'),
                    Pulse(
                      controller: (animation) {
                        animation.addListener(() {
                          animation.repeat();
                        });
                      },
                      // infinite: true,
                      child:Image(
                        width: 30,
                        // height: 30,/
                        image: AssetImage('assets/icons/phantom.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        )
      ),
  );
  }
}