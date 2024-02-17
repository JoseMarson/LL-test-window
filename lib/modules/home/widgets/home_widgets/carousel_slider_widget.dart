import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/cards/card1_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/cards/card2_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/cards/card3_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/cards/card4_widget.dart';

class CarouselSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CarouselSlider(
        items: [
          Card1Widget(
            title: 'Fique por dentro',
            description:
                'Sempre consideramos quilômetros extras nas rotas para compensar o deslocamento inicial',
            imagePath: 'assets/images/lamp.png',
          ),
          Card2Widget(
            title: 'Rotas dinâmicas LocalLog',
            description:
                'Ganhe mais com rotas mais caras em períodos de alta demanda. Nós iremos te avisar quando estiverem ativas!',
            imagePath: 'assets/images/star.png',
          ),
          Card3Widget(
            title: 'Ficou com alguma dúvida?',
          ),
          Card4Widget(
            title: 'Camisa UV LocalLog',
            description: 'Compre agora',
          ),
        ],
        options: CarouselOptions(
          height: 106.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 1.0,
        ),
      ),
    );
  }
}
