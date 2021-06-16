import 'package:ewhodas/pagina_inicial.dart';
import 'package:ewhodas/tela_de_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class recuperar_senha extends StatefulWidget {
  @override
  _recuperar_senhaState createState() => _recuperar_senhaState();
}

class _recuperar_senhaState extends State<recuperar_senha> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 40.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/logo.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: 40.0, right: 40.0, bottom: 20),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Informe o e-mail cadastrado e enviaremos um link para a redefinição de sua senha",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 98, 143, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: FaIcon(
                      FontAwesomeIcons.userAlt,
                      color: Color.fromRGBO(88, 98, 143, 1),
                    ),
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(88, 98, 143, 1), fontSize: 20),
                  ),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return Home();
                        }),
                      );
                    },
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
