import 'package:flutter/material.dart';

class CardOffer extends StatelessWidget {
  const CardOffer({Key key, this.color, this.hexColor}) : super(key: key);

  final Color color;
  final Color hexColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: 270.0,
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Blueberry \n Special",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Calories: 20 kcal",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Size: 10 oz",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: hexColor, borderRadius: BorderRadius.circular(50.0)),
                child: Center(
                  child: Text(
                    "20%",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                r'$12',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: color),
    );
  }
}
