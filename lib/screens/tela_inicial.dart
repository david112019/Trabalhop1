import 'package:flutter/material.dart';
import 'package:mercado/screens/registrar.dart';

import 'entra_screen.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[700],
      body: Center(
          child: Container(
              padding: const EdgeInsets.only(top: 105),
              width: 300,
              child: ListView(children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 204.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
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
                      MaterialPageRoute(builder: (context)=> EntraScreen())
                  );
                  },
                  child: Text(
                    "Entrar".toUpperCase(),
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
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
                      MaterialPageRoute(builder: (context)=> RegistrarScreen())
                  );
                  },
                  child: Text(
                    "Registrar".toUpperCase(),
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ]))),
    );
  }
}

