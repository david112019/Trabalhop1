import 'package:flutter/material.dart';
import 'package:mercado/tabs/home_tab.dart';

import 'confirmacao_screen.dart';

class RegistrarScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[700],
      body: Form(
        key: _formKey,
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
                _size(25.0),
                _textformR("Nome"),
                _size(25.0),
                _textformR("Email"),
                _size(25.0),
                _textformR("Confirmar Email"),
                _size(25.0),
                _textformR("CPF"),
                _size(25.0),
                _textformR("Telefone"),
                _size(60.0),
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
                  child: Text(
                    "Enviar".toUpperCase(),
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=> HomeTab())
                    );
                  },
                ),
                _size(30.0),

              ]),
        ),
      ),
    );
  }
}

Widget _textformR(String string){
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
          borderSide: BorderSide.none,
        ),

        hintStyle: TextStyle(
            color: Colors.white,
            fontFamily: "WorkSansLight",
            fontSize: 25.0),
        filled: true,
        fillColor: Colors.white24,
        hintText: string),
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 22.0),
  );
}

Widget _size(double h){
  return SizedBox(
    height: h,
  );
}
