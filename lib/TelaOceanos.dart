import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaOceanos extends StatefulWidget {
  @override
  _TelaOceanosState createState() => _TelaOceanosState();
}

class _TelaOceanosState extends State<TelaOceanos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temperatura dos oceanos"),
      ),
      body: SingleChildScrollView(



      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image.network("https://ciram.epagri.sc.gov.br/ciram_arquivos/oceano/images/TSM-1.png"),
      ),










        ),



        );

  }
}

