import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class paciente_formulario extends StatefulWidget {
  @override
  _paciente_formularioState createState() => _paciente_formularioState();
}

class _paciente_formularioState extends State<paciente_formulario> {
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
                  padding: EdgeInsets.only(top: 10.0, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "World Health Organization \nDisability Schedule 2.0\nWHODAS 2.0",
                        style: TextStyle(
                            color: Color.fromRGBO(88, 98, 143, 1),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 50.0, right: 20),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/logo.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                ),
                questao("F1 - Número da identidade do entrevistado"),
                questao("F2 - Número da identidade do entrevistador"),
                questao("F3 - Momento da Avaliação"),
                questao("F4 - Data da Entrevista"),
                questao(
                    "F5 - Condição em que vive no momento da entrevista (marque apenas uma alternativa)"
                    "\n "
                    "\n- Independente na comunidade"
                    "\n- Vive com assistência"
                    "\n- Hospitalizado"),
                questao("A1 - Anote o sexo da pessoa conforme observado"
                    "\n"
                    "\n- Feminino"
                    "\n- Masculino"),
                questao("A2 - Qual a sua idade?"),
                questao("A3 - Quantos anos no total você passou estudando em escola, faculdade ou universidade?"),
                questao_marcar("Qual é o seu estado civil atual?"),
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
                        "Confirmar",
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
          // RadioListTile(value: "A", groupValue: null, onChanged: null),
          // RadioListTile(value: "A", groupValue: null, onChanged: null),
          // RadioListTile(value: "A", groupValue: null, onChanged: null),
          // RadioListTile(value: "A", groupValue: null, onChanged: null),
          // RadioListTile(value: "A", groupValue: null, onChanged: null),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
