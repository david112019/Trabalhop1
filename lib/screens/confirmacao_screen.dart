import 'package:flutter/material.dart';

import 'home_screen.dart';

class ComfirmaScreen extends StatelessWidget {
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
                _size(30.0),
                _textTitle("Confirmação de Acesso"),
                _size(70.0),
                _text("Para confimarção, insira o código recebido por email:"),
                _size(10.0),
                _textformC("Código"),
                _size(20.0),
                _text("Ou SMS recebido"),
                _size(10.0),
                _textformC("Código"),
                _size(70.0),
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
                  onPressed: () {Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=> HomeScreen())
                  );
                  },
                  child: Text(
                    "Registrar".toUpperCase(),
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

Widget _textTitle(String title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
  );
}
Widget _text(String texto) {
  return Text(
    texto,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 25.0, color: Colors.white),
  );
}

Widget _textformC(String string) {
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
            color: Colors.white, fontFamily: "WorkSansLight", fontSize: 25.0),
        filled: true,
        fillColor: Colors.white24,
        hintText: string),
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 22.0,
    ),
  );
}
Widget _size(double h){
  return SizedBox(
    height: h,
  );
}
