import 'package:ewhodas/paciente_formulario.dart';
import 'package:ewhodas/registro_paciente.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ewhodas/recuperar_senha.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class pagina_inicial extends StatefulWidget {
  @override
  _pagina_inicialState createState() => _pagina_inicialState();
}

class _pagina_inicialState extends State<pagina_inicial> {
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
                padding: EdgeInsets.only(top: 20.0, left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return registro_paciente();
                          }),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.penAlt,
                              size: 50,
                              color: Color.fromRGBO(88, 98, 143, 1),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Registre seus\npacientes",
                              style: TextStyle(
                                  color: Color.fromRGBO(88, 98, 143, 1),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return paciente_formulario();
                          }),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.notesMedical,
                              size: 50,
                              color: Color.fromRGBO(88, 98, 143, 1),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Formulário\nWHODAS",
                              style: TextStyle(
                                  color: Color.fromRGBO(88, 98, 143, 1),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0, left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return recuperar_senha();
                          }),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.search,
                              size: 50,
                              color: Color.fromRGBO(88, 98, 143, 1),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Busque seus\npacientes",
                              style: TextStyle(
                                  color: Color.fromRGBO(88, 98, 143, 1), fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return recuperar_senha();
                          }),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bookMedical,
                              size: 50,
                              color: Color.fromRGBO(88, 98, 143, 1),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Consulte o CIF",
                              style: TextStyle(
                                  color: Color.fromRGBO(88, 98, 143, 1), fontSize: 20.0,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
