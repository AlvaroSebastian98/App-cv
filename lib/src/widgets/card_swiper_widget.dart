import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


class CardSwiper extends StatelessWidget {

  final List<dynamic> apps;

  CardSwiper({ @required this.apps });


  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
       padding: EdgeInsets.only(top: 10.0),
       child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
          itemBuilder: (BuildContext context, int index){

            apps[index]["id"] = '${ apps[index]["id"] }-tarjeta';

            return Hero(
              tag: apps[index]["id"],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: GestureDetector(
                  onTap: ()=> Navigator.pushNamed(context, 'detallePortfolio', arguments: apps[index]),
                  child: Image( image: AssetImage(apps[index]["imagen"])),
                )
              ),
            );

          },
          itemCount: apps.length,
          // pagination: new SwiperPagination(),
          // control: new SwiperControl(),
      ),
    );

  }
}
