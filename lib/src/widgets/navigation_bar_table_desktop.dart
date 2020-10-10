import 'package:flutter/material.dart';
import 'package:drinks/src/widgets/nav_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NavBarLogo(),
          SizedBox(
            width: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavBarItem('Home'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Smoothies'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Contact'),
            ],
          )
        ],
      ),
    );
  }
}

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset('icons/menu_icon.png'),
    );
  }
}
