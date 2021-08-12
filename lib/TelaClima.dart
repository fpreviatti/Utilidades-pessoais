import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaClima extends StatefulWidget {
  @override
  _TelaClimaState createState() => _TelaClimaState();
}

class _TelaClimaState extends State<TelaClima> {

  @override
  void initState() {
    _recuperarClima()
    ;
    super.initState();
  }

  String _campoGraus="";
  String _condicaoTempo="";

  _recuperarClima() async{


    String url = "https://api.hgbrasil.com/weather?woeid=455861";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode( response.body );
    String _temperatura = retorno["results"]["temp"].toString();
    String _condicao = retorno["results"]["description"].toString();

    /*
    String aux;
    //aux.substring(0, 3);
    aux = consumoDolar.replaceAll(".", ",");
    aux = aux.substring(0,4);
*/

    //aux.replaceRange(0, 3, aux);

/*
    setState(() {
      _logradouro = logradouro;
    });
*/

   // print(_consumoClima);



    setState(() {
     // _valorDolar = aux;
      //_valorDolar.split(pattern)
      _campoGraus = _temperatura;
      _condicaoTempo = _condicao;
      print(_condicao);
    });




  }












  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clima"),
      ),
      body: Center(














        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,

          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Text("Clima em Florianópolis"),
            Padding(padding: EdgeInsets.all(12)),
            Text(_campoGraus+"°",
              style: TextStyle(
                  fontSize: 20
              ),

            ),
            Padding(padding: EdgeInsets.all(12)),

            Text(_condicaoTempo,
              style: TextStyle(
                  fontSize: 20
              ),

            ),


          ],
        ),

      ),
    );
  }
}
