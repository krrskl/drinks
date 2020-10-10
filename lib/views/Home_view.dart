import 'package:flutter/material.dart';

import 'package:drinks/src/widgets/header.dart';
import 'package:drinks/src/widgets/card_offer.dart';
import 'package:drinks/src/widgets/centered_view.dart';
import 'package:drinks/src/widgets/navigation_bar_table_desktop.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            child: CenteredView(
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  NavigationBarTabletDesktop(),
                  Header(size: size),
                  Positioned(
                      right: 25.0,
                      top: (size.height * 0.6),
                      child: Row(
                        children: <Widget>[
                          CardOffer(
                            color: Color.fromRGBO(111, 149, 81, 0.5),
                            hexColor: Color(0xff3E752A),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CardOffer(
                            color: Color.fromRGBO(251, 196, 0, 0.5),
                            hexColor: Color(0xffFBC400),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CardOffer(
                            color: Color.fromRGBO(97, 41, 153, 0.5),
                            hexColor: Color(0xff612999),
                          )
                        ],
                      )),
                  Positioned(
                      right: 0,
                      top: (size.height * 0.15),
                      child: Column(
                        children: [
                          Image.asset('icons/facebook_icon.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Image.asset('icons/twitter_icon.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Image.asset('icons/instagram_icon.png'),
                        ],
                      ))
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('imgs/drinks_background.png'),
                  fit: BoxFit.cover),
            ),
            height: size.height,
          ),
          CenteredView(
            child: Expanded(
              child: Text("Hola"),
            ),
          )
        ]),
      ),
    );
  }
}
