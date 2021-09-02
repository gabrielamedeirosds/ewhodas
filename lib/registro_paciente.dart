import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registro_paciente extends StatefulWidget {
  @override
  _registro_pacienteState createState() => _registro_pacienteState();
}

class _registro_pacienteState extends State<registro_paciente> {
  TextEditingController emailController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  final _formKey =
  GlobalKey<FormState>(); //key do formulario (identifica o form)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 56, 97, 1),
        title: const Text(' '),
        actions: <Widget>[],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ficha Cadastral",
                        style: TextStyle(
                            color: Color.fromRGBO(88, 98, 143, 1),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      FaIcon(
                        FontAwesomeIcons.penAlt,
                        size: 50,
                        color: Color.fromRGBO(88, 98, 143, 1),
                      ),
                    ],
                  ),
                ),
                questao("Nome Completo"),
                questao_numero("Idade"),
                questao_numero("Data de Nascimento"),
                questao_numero("Telefone"),
                questao("Email"),
                questao("Sexo"),
                questao("Consumo de álcool pelo menos 1 vez na semana?"),
                questao("Tabagista"),
                questao("Escolaridade"),
                questao("Cidade"),
                questao_numero("Renda Familiar"),



                Padding(
                  padding: EdgeInsets.only(top: 40.0, bottom: 50.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(88, 98, 143, 1),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return pagina_inicial();
                            }),
                          );
                        }
                      },
                      child: Text(
                        "Registrar",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget questao(String q) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q,
            style: TextStyle(
                color: Color.fromRGBO(88, 98, 143, 1),
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            // keyboardType: TextInputType.number,
            minLines: 1,
            maxLines: 4,
            // expands: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                  color: Color.fromRGBO(88, 98, 143, 1), fontSize: 14),
            ),
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
    Widget questao_numero(String q) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q,
            style: TextStyle(
                color: Color.fromRGBO(88, 98, 143, 1),
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            minLines: 1,
            maxLines: 4,
            // expands: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                  color: Color.fromRGBO(88, 98, 143, 1), fontSize: 14),
            ),
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
  Widget questao_marcar(String q) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 5.0,
          ),
         

          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
