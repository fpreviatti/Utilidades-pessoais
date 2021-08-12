import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaDolar extends StatefulWidget {
  @override
  _TelaDolarState createState() => _TelaDolarState();
}

class _TelaDolarState extends State<TelaDolar> {


  @override
  void initState() {
    _recuperarDolar()
  ;
    super.initState();
  }



String _valorDolar = "valor";
  
 
  //a.toStringAsPrecision(2);


  _recuperarDolar() async {

    String url = "https://economia.awesomeapi.com.br/last/USD-BRL";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode( response.body );
    String consumoDolar = retorno["USDBRL"]["high"].toString();
    String aux;
    //aux.substring(0, 3);
    aux = consumoDolar.replaceAll(".", ",");
    aux = aux.substring(0,4);


    //aux.replaceRange(0, 3, aux);

/*
    setState(() {
      _logradouro = logradouro;
    });
*/

  print(aux);

  setState(() {
    _valorDolar = aux;
    //_valorDolar.split(pattern)
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dolar Hoje"),
      ),
      body: Center(

        child: Column(

          
          mainAxisAlignment: MainAxisAlignment.center,

          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Text("Valor do dólar hoje"),
            Padding(padding: EdgeInsets.all(15)),
            Text("R\$" +_valorDolar,
            style: TextStyle(
              fontSize: 20
            ),

            )

          ],
        ),
      ),
    );
  }
}
