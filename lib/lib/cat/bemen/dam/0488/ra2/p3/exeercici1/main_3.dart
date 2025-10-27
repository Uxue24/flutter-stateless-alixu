import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' App Ex3',
      home: const ResourcePage(),
    );
  }
}

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(title: const Text('Resource Example')), // Barra d'aplicació
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding al voltant del contingut
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // text alineat a l'esquerra
          children: [
            Column(
              mainAxisSize: MainAxisSize.min, 
              crossAxisAlignment: CrossAxisAlignment.start, // alinea text i imatge a l'esquerra
              children: [
                const Text(
                  'This is a resource string',
                  style: TextStyle(fontSize: 18), // Estil del text
                ),
                const SizedBox(height: 10),
                // La imatge centrada respecte al text
                Align(
                  alignment: Alignment.centerLeft, // pots canviar a center per centrar exactament
                  child: Image.network(
                    'https://i.imgur.com/8Km9tLL.jpg', // URL de la imatge
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
