import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[700],
      body: Center(
        child: Container(
          child: ListView(
              padding: const EdgeInsets.fromLTRB(
                10,
                50,
                10,
                10,
              ),
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 90.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: "Procurar",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Procurar",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                _size(25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _container(90.0, 100.0),
                    _container(90.0, 100.0),
                    _container(90.0, 100.0),
                  ],
                ),
                _size(25.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _container(100.0, 350.0),
                    ]),
                _size(25.0),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _container(60.0, 350.0),
                      _size(10.0),
                      _container(60.0, 350.0),
                      _size(10.0),
                      _container(60.0, 350.0),
                      _size(10.0),
                      _container(60.0, 350.0),
                    ])
              ]),
        ),
      ),
    );
  }
}

Widget _size(h) {
  return SizedBox(
    height: h,
  );
}

Widget _container(he, wi) {
  return Container(
    height: he,
    width: wi,
    child: Text(""),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.purpleAccent,
    ),
  );
}
