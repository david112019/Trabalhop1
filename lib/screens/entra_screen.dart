import 'package:flutter/material.dart';
import 'package:mercado/tabs/home_tab.dart';

class EntraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[700],
      body: Form(
        child: Container(
          child: ListView(
              padding: const EdgeInsets.fromLTRB(
                10,
                80,
                10,
                10,
              ),
//          padding: EdgeInsets.all(22.0),
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 134.0,
                ),
                _size(55.0),
                _text("Entre com o Email"),
                _size(20.0),
                _textformE("Email"),
                _size(40.0),
                _text("Entre com o telefone"),
                _size(20.0),
                _textformE("Telefone"),
                _size(90.0),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      )),
                  color: Colors.purpleAccent[700],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=> HomeTab())
                    );
                  },
                  child: Text(
                    "Enviar".toUpperCase(),
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

Widget _text(String texto) {
  return Text(
    texto,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 40.0,
      color: Colors.white,
    ),
  );
}

Widget _textformE(String string) {
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
            color: Colors.white, fontFamily: "WorkSansLight", fontSize: 25.0),
        filled: true,
        fillColor: Colors.white24,
        hintText: string),
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 22.0),
  );
}

Widget _size(double h) {
  return SizedBox(
    height: h,
  );
}
