import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cadastro_usuario extends StatefulWidget {
  @override
  _cadastro_usuarioState createState() => _cadastro_usuarioState();
}

class _cadastro_usuarioState extends State<cadastro_usuario> {
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20),
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
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20),
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
                questao("Nome"),
                questao("Sobrenome"),
                questao("Data de Nascimento"),
                questao("Sexo"),
                questao("Idioma"),
                questao("Profissão"),
                questao("País"),
                questao("Estado"),
                questao("Cidade"),
                questao("Telefone"),
                questao("Email"),
                senha("Senha"),
                senha("Confirme a senha"),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, bottom: 50.0, right: 130),
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
                        "Continuar",
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

  Widget senha(String q) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q,
            style:
            TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
