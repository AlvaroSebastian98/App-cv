import 'package:flutter/material.dart';


class MovieHorizontal extends StatelessWidget {

  final apps;
  final Function siguientePagina;

  MovieHorizontal({ @required this.apps, @required this.siguientePagina });

  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );


  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener( () {

      // if ( _pageController.position.pixels >= _pageController.position.maxScrollExtent - 200 ){
      //   siguientePagina();
      // }

    });


    return Container(
      height: _screenSize.height * 0.3,
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        // children: _tarjetas(context),
        itemCount: apps.length,
        itemBuilder: ( context, i ) => _tarjeta(context, apps[i] ),
      ),
    );


  }

  Widget _tarjeta(BuildContext context, app) {

    // app["id"] = '${ app["id"] }-poster';

    final tarjeta = Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: AssetImage(app),
                placeholder: AssetImage('assets/images/no-image.jpg'),
                fit: BoxFit.cover,
                height: 230.0,
              ),
            ),
            SizedBox(height: 5.0),
            // Text(
            //   app["nombre"],
            //   overflow: TextOverflow.ellipsis,
            //   style: Theme.of(context).textTheme.caption,
            // )
          ],
        ),
      );

    return GestureDetector(
      child: tarjeta,
      onTap: (){

        Navigator.pushNamed(context, 'detalle', arguments: app );

      },
    );

  }


  List<Widget> _tarjetas(BuildContext context) {

    return apps.map( (app) {

      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: AssetImage( app),
                placeholder: AssetImage('assets/images/no-image.jpg'),
                fit: BoxFit.cover,
                height: 160.0,
              ),
            ),
            SizedBox(height: 5.0),
            // Text(
            //   app["nombre"],
            //   overflow: TextOverflow.ellipsis,
            //   style: Theme.of(context).textTheme.caption,
            // )
          ],
        ),
      );


    }).toList();

  }

}
