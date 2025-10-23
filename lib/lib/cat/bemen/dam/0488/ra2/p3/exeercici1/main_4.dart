import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Classe Contact
class Contact {
  final String fullName;
  final String email;
  final String phone;

  Contact({required this.fullName, required this.email, required this.phone});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Objecte Contact
    final contact = Contact(
      fullName: 'Marta Casserres',
      email: 'marta@example.com',
      phone: '934748474',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imatge de perfil rodona
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://i.imgur.com/8Km9tLL.jpg'), // substitueix amb la teva imatge
            ),
            const SizedBox(height: 15),

            // Nom
            Text(
              contact.fullName,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Caixa rodona gris clar amb email i phone
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  // Email amb emoji Gmail
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('📧', style: TextStyle(fontSize: 20)),
                      const SizedBox(width: 10),
                      Text(
                        contact.email,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Phone amb emoji telèfon
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('📞', style: TextStyle(fontSize: 20)),
                      const SizedBox(width: 10),
                      Text(
                        contact.phone,
                        style: const TextStyle(fontSize: 18),
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
