import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Inicia l'aplicació amb el widget MyApp
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) { // Mètode build
    return MaterialApp( // Widget MaterialApp
      title: ' App Ex2', // Títol de l'aplicació
      home: const WelcomePage(), // Pantalla principal
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Widget Scaffold
      body: Center( // Centra el contingut
        child: Column( // Columna per organitzar els widgets verticalment
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
