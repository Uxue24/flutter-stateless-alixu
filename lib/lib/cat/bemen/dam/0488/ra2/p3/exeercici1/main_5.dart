import 'package:flutter/material.dart';

class Message {
  final String author;
  final String body;

  Message(this.author, this.body); // Constructor
}

void main() {
  runApp(const MyApp()); // Inicia l'aplicació amb el widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) { 
    return MaterialApp( // Widget MaterialApp
      title: ' Lista Ex5',
      home: const MessageListPage(), // Pantalla principal
    );
  }
}

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // Llista amb els 4 missatges 
    final messages = [
      Message("Emma Atkins", "Hola! Aquest és el meu primer missatge."),
      Message("Karter Kramer", "Bon dia! Com va tot?"),
      Message("Wells Wilson", "Aquest és un missatge de prova."),
      Message("Uxue Esteve", "Hola! Sóc Uxue, encantat de conèixer-te."),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Message List')), // Barra d'aplicació
      body: ListView.builder( 
        itemCount: messages.length, // Nombre d'elements a la llista
        itemBuilder: (context, index) { 
          final msg = messages[index]; 
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Padding al voltant de cada missatge
            child: Container(
              decoration: BoxDecoration( 
                color: Colors.grey[200], // Color de fons gris clar
                borderRadius: BorderRadius.circular(15), // Cantons arrodonits
              ),
              padding: const EdgeInsets.all(16), // Padding intern
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinea el text a l'esquerra
                children: [
                  Text(
                    msg.author,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16), // Estil de l'autor
                  ),
                  const SizedBox(height: 5), // Espai entre l'autor i el missatge
                  Text(msg.body), 
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {}, // sense funcionalitat
        child: const Icon(Icons.add), // Icona de sumar
      ),
    );
  }
}
