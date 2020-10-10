import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (size.height * 0.2),
      left: 50.0,
      child: Container(
        width: 400.0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Enjoy!",
                style: TextStyle(
                    color: Colors.purple[700],
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus, quis quod. Ut tenetur facilis pariatur sunt nesciunt beatae aperiam",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        contentPadding: EdgeInsets.only(left: 30.0),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Search your drink",
                        labelStyle: TextStyle(color: Colors.purple[200]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Image.asset(
                    'icons/search_icon.png',
                  ),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.purple[700],
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ]),
            ]),
      ),
    );
  }
}
