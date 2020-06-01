import 'package:cv_app/src/widgets/movie_horizontal.dart';
import 'package:flutter/material.dart';

class DetallePortfolio extends StatefulWidget {
  DetallePortfolio({Key key}) : super(key: key);

  @override
  _DetallePortfolioState createState() => _DetallePortfolioState();
}

class _DetallePortfolioState extends State<DetallePortfolio> {

  @override
  Widget build(BuildContext context) {

    final app = ModalRoute.of(context).settings.arguments;

    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[400],
        ),
        body: Column(
          children: <Widget>[
            _posterTitulo( context, app ),
            _descripcion( app ),
            _listaImagenes(app),
          ],
        )
      ),
    );
  }

  Widget _listaImagenes(app) {
    return Container(
      margin: EdgeInsets.all(20),
      child: MovieHorizontal(apps: app['imagenes'], siguientePagina: (){}));
  }

    Widget _posterTitulo(BuildContext context, app ){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: app['id'],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage( app['imagen']),
                height: 250.0,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(app['nombre'], style: TextStyle(
                  fontSize: 30
                ), overflow: TextOverflow.ellipsis ),
                // Text(app['nombre'], style: Theme.of(context).textTheme.subhead, overflow: TextOverflow.ellipsis ),
                // Row(
                //   children: <Widget>[
                //     Icon( Icons.star_border ),
                //     Text( app.voteAverage.toString(), style: Theme.of(context).textTheme.subhead )
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );

  }

   Widget _descripcion(app) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        app['descripcion'],
        textAlign: TextAlign.justify,
      ),
    );

  }
}