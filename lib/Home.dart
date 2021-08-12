import 'package:flutter/material.dart';
import 'package:listas/TelaOceanos.dart';

import 'TelaClima.dart';
import 'TelaDolar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){

    _itens = [];
    for(int i=0; i<3; i++){


      switch (i) {
        case 0:
        // do something
          Map<String, dynamic> item = Map();
          item["foto"] = "images/dolar.jpg";
          item["descricao"] = "Valor do Dolar";
          _itens.add( item );
          break;
        case 1:
        // do something else
          Map<String, dynamic> item = Map();
          item["foto"] = "images/clima.jpg";
          item["descricao"] = "Temperatura em floripa";
          _itens.add( item );
          break;

        case 2:
        // do something else
          Map<String, dynamic> item = Map();
          item["foto"] = "images/oceanos.jpg";
          item["descricao"] = "Temperatura dos oceanos";
          _itens.add( item );
          break;

      }


    }

  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Utilidades"),
      ),
      body: Container(

        padding: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,

        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice){

              //Map<String, dynamic> item = _itens[indice];
              //print("item ${ _itens[indice]["titulo"] }");

              return ListTile(

                leading: Text(
                    (_itens[indice]["descricao"])
                ),


                //title: Image.asset(_itens[indice]["foto"] ),
                title: GestureDetector(
                    onTap: (){

                      if (_itens[indice]["foto"]=="images/dolar.jpg"){
                        //print("Clicou no dolar");

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> TelaDolar() ));

                      }

                        else if(_itens[indice]["foto"]=="images/clima.jpg"){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> TelaClima() ));
                      }

                      else if(_itens[indice]["foto"]=="images/oceanos.jpg"){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> TelaOceanos() ));
                      }

                    },
                    child: Image.asset(_itens[indice]["foto"]),


                      /*
                leading: Text(
                  (_itens[indice]["descricao"])
                ),


               */


                ),


                //subtitle: Text( _itens[indice]["descricao"] ),
              );
            }
        ),

      ),
    );
  }
}
