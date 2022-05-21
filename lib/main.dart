import 'package:flutter/material.dart';
import 'package:nueva_app13/pages/pageStatefull.dart';
import 'package:nueva_app13/pages/pageStateless.dart';

void main() => runApp(EnviarInfoApp());

class EnviarInfoApp extends StatelessWidget {
  const EnviarInfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Enviar Información",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textocontroller = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text("Enviar Información"),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _textocontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingrese Información"),
              )),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageStateless(_textocontroller.text)));
            },
            child: Text("Enviar a Stateless"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageStatefull(_textocontroller.text)));
            },
            child: Text("Enviar a Statefull"),
          )
        ],
      ),
    );
  }
}
