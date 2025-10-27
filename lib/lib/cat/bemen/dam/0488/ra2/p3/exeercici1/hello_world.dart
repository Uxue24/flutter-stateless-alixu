import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp()); //inicia l'aplicació amb el widget HelloWorldApp
}

class HelloWorldApp extends StatelessWidget { 
  const HelloWorldApp({super.key});//constructor

  @override
  Widget build(BuildContext context) { //mètode build
    return MaterialApp( //widget MaterialApp
      debugShowCheckedModeBanner: false, //elimina la bandera de debug
      home: Scaffold( 
        appBar: AppBar( 
          title: const Text('Exercici 1.1 - Hello World'), //títol de l'aplicació
          backgroundColor: Colors.deepPurple, //color de la barra d'aplicació
        ),
        body: const Center(  
          child: Text( 
            'Hello World!', 
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), //estil del text
          ), 
        ),
      ),
    );
  }
}
