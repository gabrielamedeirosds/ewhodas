import 'package:ewhodas/formulario.dart';
import 'perguntas.dart';
import 'package:ewhodas/pagina_inicial.dart';
import 'package:ewhodas/resultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class paciente_formulario extends StatefulWidget {
  @override
  _paciente_formularioState createState() => _paciente_formularioState();
}

class _paciente_formularioState extends State<paciente_formulario> {
  final _formKey =
      GlobalKey<FormState>(); //key do formulario (identifica o form)

  //Estrutura da Lista -> ["enunciado", tipo de pergunta, pesos dos itens, dominio]
  //caso a questão não entre no calculo -> lista vazia

  Resultado _resultado;
  List<Pergunta> perguntas = basePerguntas.map((e) {
    return Pergunta(e['enunciado'], e['tipo'], e['pesos'], e['dominio']);
  }).toList();

  int sexo = 0;
  int estadoCivil = 0;
  int profissao = 0;

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    //height: double.infinity, //colocar isso na pagina do pdf
                    child: ListView.builder(
                      itemCount: perguntas.length,
                      itemBuilder: (context, i) => resposta(perguntas[i]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                  //TO DO: ADICIONAR UM IF QUE SÓ PERMITA O AVANÇO DE PAGINA CASO TODAS AS PERGUNTAS ESTEJAM RESPONDIDAS

                  color: Color.fromRGBO(43, 56, 97, 1),
                  onPressed: () {
                    int resDo1 = Resultado.gerarDo1(perguntas
                        .where((element) => element.dominio == "d1")
                        .toList());
                    print(
                        "O resultado do domínio 1 é ${Resultado.gerarDo1(perguntas.where((element) => element.dominio == "d1").toList())}");

                    double resDo2 = Resultado.gerarDo2(perguntas
                        .where((element) => element.dominio == "d2")
                        .toList());
                    print(
                        "O resultado do domínio 2 é ${Resultado.gerarDo2(perguntas.where((element) => element.dominio == "d2").toList())}");

                    int resDo3 = Resultado.gerarDo3(perguntas
                        .where((element) => element.dominio == "d3")
                        .toList());
                    print(
                        "O resultado do domínio 3 é ${Resultado.gerarDo2(perguntas.where((element) => element.dominio == "d3").toList())}");

                    double resDo4 = Resultado.gerarDo4(perguntas
                        .where((element) => element.dominio == "d4")
                        .toList());
                    print(
                        "O resultado do domínio 4 é ${Resultado.gerarDo2(perguntas.where((element) => element.dominio == "d4").toList())}");

                    int resDo51 = Resultado.gerarDo51(perguntas
                        .where((element) => element.dominio == "d51")
                        .toList());
                    print(
                        "O resultado do domínio 5.2 é ${Resultado.gerarDo51(perguntas.where((element) => element.dominio == "d51").toList())}");

                    double resDo52 = Resultado.gerarDo52(perguntas
                        .where((element) => element.dominio == "d52")
                        .toList());
                    print(
                        "O resultado do domínio 5.2 é ${Resultado.gerarDo52(perguntas.where((element) => element.dominio == "d52").toList())}");

                    double resDo6 = Resultado.gerarDo6(perguntas
                        .where((element) => element.dominio == "d6")
                        .toList());
                    print(
                        "O resultado do domínio 6 é ${Resultado.gerarDo6(perguntas.where((element) => element.dominio == "d6").toList())}");

                    List<String> perguntasEscritas =
                        Resultado.gerarPerguntasEscrever(perguntas);

                    Map<String, dynamic> mapResultado = {
                      "resDo1": resDo1.toString(),
                      "resDo2": resDo2.toString(),
                      "resDo3": resDo3.toString(),
                      "resDo4": resDo4.toString(),
                      "resDo51": resDo51.toString(),
                      "resDo52": resDo52.toString(),
                      "resDo6": resDo6.toString(),
                      "perguntasEscritas": perguntasEscritas,
                    };
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return PaginaResultado(resultado: mapResultado);
                      }),
                    );
                  },
                  child: Text(
                    "Confirmar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget resposta(Pergunta objeto) {
    switch (objeto.tipo) {
      case TipoPergunta.extenso:
        {
          //perguntas com resposta por extenso
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 4,
                  // expands: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(88, 98, 143, 1), fontSize: 14),
                  ),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  onChanged: (String value) {
                    setState(() {
                      objeto.setRespostaExtenso(value);
                      print(value);
                    });
                  },
                ),
              ],
            ),
          );
        }
        break;

      case TipoPergunta.marcar:
        {
          //perguntas de marcar
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile(
                      title: Text("1 - Nenhuma"),
                      value: 0,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("2 - Leve"),
                      value: 1,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("3 - Moderada"),
                      value: 2,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          print(objeto.resposta);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("4 - Grave"),
                      value: 3,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("5 - Extrema ou não consegue fazer"),
                      value: 4,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("6 - Não se aplica"),
                      value: 5,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        break;

      case TipoPergunta.afirmativa:
        {
          //perguntas afirmativas
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile(
                      title: Text("Não"),
                      value: 0,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);

                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Sim"),
                      value: 1,
                      groupValue: objeto.resposta,
                      onChanged: (int valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        break;
      default:
        {
          return Container();
          //statements;

        }
        break;
    }
  }
}
