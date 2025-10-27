import 'package:flutter/material.dart';//Importa la librería “material.dart”, que contiene todos los widgets y estilos del Material Design (el estilo visual de Google).

void main() {//función que se ejecuta primero en toda app Flutter.
  runApp(const MyApp()); //inicia la aplicación y recibe el widget raíz: MyApp.
}//const indica que el widget no cambiará en tiempo de ejecución.

class MyApp extends StatelessWidget { //Definimos un widget personalizado llamado HelloWorldApp. Hereda de StatelessWidget, lo que significa que su contenido no cambia mientras la app está en ejecución (no tiene “estado”).
  const MyApp({super.key}); //el constructor simplemente inicializa la clase y permite que Flutter gestione mejor el widget en memoria.

  @override
  Widget build(BuildContext context) { // Mètode build
    return MaterialApp( // Widget MaterialApp
      title: ' App Ex2', // Títol de l'aplicació
      home: const WelcomePage(), //Establece la pantalla principal (home), en este caso el widget WelcomePage.
    );
  }
}

class WelcomePage extends StatelessWidget {//WelcomePage también es un StatelessWidget, por tanto su contenido es fijo.
  const WelcomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Usa Scaffold como contenedor principal (estructura básica de una pantalla en Material Design).
      body: Center( // Centra el contingut
        child: Column( // Columna para organizar los widgets verticalmente
          mainAxisAlignment: MainAxisAlignment.center, // Centra els widgets verticalment
          children: [ 
            const Text( 
              'Welcome!', 
              style: TextStyle( 
                fontSize: 32, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            const SizedBox(height: 10), // Espai 
            const Text(
              'Start learning now', 
              style: TextStyle( 
                fontSize: 20,
                color: Colors.grey, // Color gris per al subtítol
              ),
            ),
            const SizedBox(height: 40), // Espai abans dels botons

            // Botó Login
            ElevatedButton( 
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom( // Estil del botó
                backgroundColor: Colors.blue, // Color de fons blau
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20), // Cantons arrodonits
                ),
                padding: const EdgeInsets.symmetric( // Padding intern
                  horizontal: 50, // Padding horitzontal
                  vertical: 15, // Padding vertical
                ),
              ),
              child: const Text( 
                'Login', 
                style: TextStyle(fontSize: 18), // Estil del text del botó
              ),
            ),
            const SizedBox(height: 20), // Espai entre els botons

            // Botó Register
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom( // Estil del botó
                backgroundColor: Colors.blue, // Color de fons blau
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20), // Cantons arrodonits
                ),
                padding: const EdgeInsets.symmetric( // Padding intern
                  horizontal: 50, // Padding horitzontal 
                  vertical: 15, // Padding vertical
                ),
              ),
              child: const Text(  
                'Register',
                style: TextStyle(fontSize: 18), // Estil del text del botó
              ),
            ),
          ],
        ),
      ),
    );
  }
}
