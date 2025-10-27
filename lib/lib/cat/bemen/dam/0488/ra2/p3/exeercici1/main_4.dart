import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Classe Contact
class Contact {
  final String fullName; // Nom complet
  final String email; // Correu electrònic
  final String phone; // Telèfon

  Contact({required this.fullName, required this.email, required this.phone}); // Constructor
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Widget MaterialApp
      title: ' App Ex4',
      home: const ContactPage(), // Pantalla principal
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) { 
    // Objecte Contact
    final contact = Contact( 
      fullName: 'Marta Casserres',
      email: 'marta@gmail.com',
      phone: '934748474',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Contact')), // Barra d'aplicació
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra els widgets verticalment
          children: [
            // Imatge de perfil rodona
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage( 
                  'https://i.imgur.com/8Km9tLL.jpg'), // URL de la imatge
            ),
            const SizedBox(height: 15), // Espai entre la imatge i el nom

            // Nom
            Text(
              contact.fullName,
              style: const TextStyle( 
                  fontSize: 24, fontWeight: FontWeight.bold), // Estil del nom
            ),
            const SizedBox(height: 20),

            // Caixa rodona gris clar amb email i phone
            Container(
              padding: const EdgeInsets.all(16), // Padding intern
              decoration: BoxDecoration( 
                color: Colors.grey[200], // Color de fons gris clar
                borderRadius: BorderRadius.circular(20), // Cantons arrodonits
              ),
              child: Column(
                children: [
                  // Email amb emoji Gmail
                  Row(
                    mainAxisSize: MainAxisSize.min, // Ajusta l'amplada al contingut
                    children: [ 
                      const Text('📧', style: TextStyle(fontSize: 20)), 
                      const SizedBox(width: 10), // Espai entre l'emoji i el text
                      Text(
                        contact.email,
                        style: const TextStyle(fontSize: 18), // Estil del text
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Phone amb emoji telèfon
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('📞', style: TextStyle(fontSize: 20)), // Emoji telèfon
                      const SizedBox(width: 10),
                      Text(
                        contact.phone,
                        style: const TextStyle(fontSize: 18), // Estil del text
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
