import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class busca_paciente extends StatefulWidget {
  @override
  _busca_pacienteState createState() => _busca_pacienteState();
}
class _busca_pacienteState extends State<busca_paciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 56, 97, 1),
    title: const Text('Pacientes'),
    actions: <Widget>[],
    ),
    backgroundColor: Colors.white,
    body: SafeArea(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt, size: 40, color: Color.fromRGBO(43, 56, 97, 1),),
            title: Text('João'),
            subtitle: Text ("11/11/11", textAlign: TextAlign.right,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt, size: 40, color: Color.fromRGBO(43, 56, 97, 1),),
            title: Text('Maria'),
            subtitle: Text ("11/11/11", textAlign: TextAlign.right,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt, size: 40, color: Color.fromRGBO(43, 56, 97, 1),),
            title: Text('José'),
            subtitle: Text ("11/11/11", textAlign: TextAlign.right,),
          ),
        ],
      ),
    ),
    );
  }
}