import 'package:cv_app/src/widgets/card_swiper_widget.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  PortfolioPage({Key key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    List<dynamic> listaApps = [
      {
        "id": 1,
        "nombre": "Thika Thani",
        "imagen": "assets/images/thika-thani/thika-thani-1.png",
        "imagenes": [
          "assets/images/thika-thani/thika-thani-1.png",
          "assets/images/thika-thani/thika-thani-2.png",
          "assets/images/thika-thani/thika-thani-3.png",
          "assets/images/thika-thani/thika-thani-4.png",
          "assets/images/thika-thani/thika-thani-5.png",
        ],
        "descripcion": "Thika Thani es una aplicación de compra y ventas de productos naturales. En este proyecto se desarrollaron las vistas, mas no la lógica"
      },
      {
        "id": 2,
        "nombre": "Selfie Assistance",
        "imagen": "assets/images/selfie-assistance/selfie-assistance-1.png",
        "imagenes": [
          "assets/images/selfie-assistance/selfie-assistance-1.png",
          "assets/images/selfie-assistance/selfie-assistance-2.png",
          "assets/images/selfie-assistance/selfie-assistance-3.png",
          "assets/images/selfie-assistance/selfie-assistance-4.png",
          "assets/images/selfie-assistance/selfie-assistance-5.png",
        ],
        "descripcion": "Es una aplicación para marcar tu asistencia mediante la toma de fotos. Ayuda a validar las tareas realizadas durante el día."
      },
      {
        "id": 3,
        "nombre": "Care App",
        "imagen": "assets/images/care-app/care-app-1.png",
        "imagenes": [
          "assets/images/care-app/care-app-1.png",
          "assets/images/care-app/care-app-2.png",
          "assets/images/care-app/care-app-3.png",
          "assets/images/care-app/care-app-4.png",
          "assets/images/care-app/care-app-5.png",
          "assets/images/care-app/care-app-6.png",
          "assets/images/care-app/care-app-7.png",
          "assets/images/care-app/care-app-8.png",

        ],
        "descripcion": "La aplicación se centra en ayudar a los evaluadores de profesores en la provincia. Este proyecto está aún en desarrollo."
      }
    ];

    return Container(
      height: size.height * 0.8,
      child: Center(child: CardSwiper(apps: listaApps)),
    );
  }
}