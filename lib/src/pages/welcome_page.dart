import 'package:cv_app/src/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        // backgroundColor: Colors.yellow[800],
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color> [
                // Color.fromRGBO(10, 233, 180, 1.0),
                // Color.fromRGBO(10, 120, 220, 1.0),
                Colors.black,
                // Colors.greenAccent[400],
                Colors.greenAccent[400],
                Colors.greenAccent[400],
              ]
            )
          ),
          child: SafeArea(
            child: Container(
              height: size.height,
              width: size.width,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Color.fromRGBO(255, 255, 255, 0.05),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/code.jpg'),
                            )
                          ),
                        ),
                        Text(
                          // 'CV',
                          'Álvaro Mañuico',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'momcake',
                            // fontFamily: 'Arial',
                            // fontSize: 58,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: size.width,
                    child: Center(
                      child: Text(
                        'BIENVENIDO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          // fontFamily: 'momcake',
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      'Hola, soy un preprofesional de la carrera Diseño y Desarrollo de Software y este es mi CV.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Avenir LT Std',
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  ClipPath(
                    // clipper: WaveClipperOne(reverse: true),
                    clipper: OvalTopBorderClipper(),
                    child: Container(
                      color: Colors.white,
                      width: size.width,
                      height: size.height * 0.25,
                      child: Center(
                        child: Container(
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuPage(),
                                ),
                              );
                            },
                            padding: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                  // gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                                  //   begin: Alignment.centerLeft,
                                  //   end: Alignment.centerRight,
                                  // ),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: <Color> [
                                      Color.fromRGBO(10, 203, 180, 1.0),
                                      Color.fromRGBO(10, 120, 220, 1.0),
                                    ]
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "COMENZAR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Arial'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}