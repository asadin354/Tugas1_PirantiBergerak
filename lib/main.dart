// file: main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilApp());
}

class ProfilApp extends StatelessWidget {
  const ProfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Diri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Profil Diri"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Foto profil
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                const SizedBox(height: 20),

                // Nama
                const Text(
                  "Muhammad Asadin Nur",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                // Jurusan
                const Text(
                  "Informatika - Universitas Mulawarman",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),

                const Divider(height: 30, thickness: 1),

                // Email
                ListTile(
                  leading: const Icon(Icons.email, color: Colors.blue),
                  title: const Text("Email"),
                  subtitle: const Text("asadinnurmuhammad@gmail.com"),
                ),

                // No. HP
                ListTile(
                  leading: const Icon(Icons.phone, color: Colors.green),
                  title: const Text("Kontak"),
                  subtitle: const Text("+62 812-3456-7890"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
