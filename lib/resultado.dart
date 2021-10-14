import 'package:ewhodas/formulario.dart';
import 'perguntas.dart';
import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaginaResultado extends StatefulWidget {
  final Map<String, dynamic> resultado;

  const PaginaResultado({Key key, this.resultado}) : super(key: key);
  @override
  PaginaResultadoState createState() => PaginaResultadoState();
}

class PaginaResultadoState extends State<PaginaResultado> {
  @override
  Widget build(BuildContext context) {
    print(widget.resultado);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(43, 56, 97, 1),
          title: const Text('Resultados'),
          actions: <Widget>[],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: new EdgeInsets.only(top: 40.0, left: 25),
                width: 300,
                height: 200,
                child: ListView.builder(
                  itemCount: widget.resultado["perguntasEscritas"].length,
                  itemBuilder: (context, i) => Text(
                    "${widget.resultado["perguntasEscritas"][i]}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: new EdgeInsets.only(left: 25.0),
                width: 350,
                child: Text(
                  "Domínio de Cognição: ${widget.resultado["resDo1"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 15.0),
                width: 350,
                //padding: new EdgeInsets.only(top: 90.0),
                child: Text(
                  "Domínio de Mobilidade: ${widget.resultado["resDo2"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 16.0),
                width: 320,
                child: Text(
                  "Domínio de Auto-cuidado: ${widget.resultado["resDo3"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 15.0),
                width: 350,
                child: Text(
                  "Domínio de Relações Interpessoais: ${widget.resultado["resDo4"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 25.0),
                width: 350,
                child: Text(
                  "Domínio de Atividades Domésticas: ${widget.resultado["resDo51"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 25.0),
                width: 350,
                child: Text(
                  "Domínio de Atividades escolares ou do trabalho: ${widget.resultado["resDo52"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 5.0),
                width: 350,
                child: Text(
                  "Domínio de Participação: ${widget.resultado["resDo6"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Container(
                padding: new EdgeInsets.only(left: 5.0),
                width: 350,
                child: Text(
                  "Total: ${widget.resultado["resDo6"]}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
