import 'package:ewhodas/pagina_inicial.dart';
import 'package:ewhodas/cadastro_usuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ewhodas/recuperar_senha.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//stful pq será interativa
class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey =
      GlobalKey<FormState>(); //key do formulario (identifica o form)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 50,
                        color: Color.fromRGBO(43, 56, 97, 1),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
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
                  padding:
                      EdgeInsets.only(left: 40.0, right: 40.0, bottom: 10.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Digite seu email";
                      }
                      // if (!value.contains("123")) {
                      //   return "Email inválido";
                      // }
                      return null;
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: FaIcon(
                        FontAwesomeIcons.userAlt,
                        color: Color.fromRGBO(43, 56, 97, 1),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(43, 56, 97, 1), fontSize: 14, ),
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
                  padding:
                      EdgeInsets.only(left: 40.0, right: 40.0, bottom: 10.0),
                  child: TextFormField(
                    //campo pra formulario
                    controller: senhaController,
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value.length < 3) {
                        return "Senha precisa ter mais que 3 caracateres";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(88, 98, 143, 1),
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.lock,
                        color: Color.fromRGBO(43, 56, 97, 1),
                      ),
                    ),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25.0, bottom: 10.0),
                  child: Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      child: Text(
                        "Recuperar senha",
                        style: TextStyle(
                            color: Color.fromRGBO(88, 98, 143, 1),
                            fontSize: 20.0),
                        textAlign: TextAlign.right,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return recuperar_senha();
                          }),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color.fromRGBO(43, 56, 97, 1),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          // if (emailController.text == "teste@teste.com" &&
                          //     senhaController.text == "123") {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (_) {
                          //       return Inicial();
                          //     }),
                          //   );
                          //   }
                          // else {
                          //   print("email ou senha inválida");
                          // }
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return pagina_inicial();
                            }),
                          );
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  child: Container(
                    height: 80,
                    alignment: Alignment.center,
                    child: FlatButton(
                      child: Text(
                        "Não possui uma conta? Cadastre-se",
                        style: TextStyle(
                            color: Color.fromRGBO(88, 98, 143, 1),
                            fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return cadastro_usuario();
                          }),
                        );
                      },
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
}
