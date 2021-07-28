import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora - simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Resultado: $resultado",
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreenAccent[400])),
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "informe o primeiro valor"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "informe o segundo valor"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent[400]),
                  ),
                  color: Colors.black,
                  onPressed: somar,
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent[400]),
                  ),
                  color: Colors.black,
                  onPressed: subtrair,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text(
                      "*",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent[400],
                      ),
                    ),
                    color: Colors.black,
                    onPressed: multimplicar),
                new MaterialButton(
                  child: new Text("/",
                      style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent[400],
                      )),
                  color: Colors.black,
                  onPressed: divisao,
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("limpar"),
                  color: Colors.grey,
                  onPressed: limpar,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  var num1;
  var num2;
  var resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void multimplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      resultado = num1 * num2;
    });
  }

  void divisao() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}
