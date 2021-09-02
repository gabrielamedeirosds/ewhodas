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
                width: 300,
                height: 200,
                padding: new EdgeInsets.all(10.0),
                  child:ListView.builder(
                      itemCount: widget.resultado["perguntasEscritas"].length,
                      itemBuilder: (context, i) => Text("${widget.resultado["perguntasEscritas"][i]}",),
                    ),
                ),
              Container(
                width: 300,
                height: 200,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.blue,
                  elevation: 10,
                  child: Text(
                    "O resultado do domínio 1 é: ${widget.resultado["resDo1"]}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 2 é: ${widget.resultado["resDo2"]}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 3 é: ${widget.resultado["resDo3"]}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 4 é: ${widget.resultado["resDo4"]}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 5.1 é: ${widget.resultado["resDo51"]}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 5.2 é: ${widget.resultado["resDo52"]}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "O resultado do domínio 6 é: ${widget.resultado["resDo6"]}",
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
