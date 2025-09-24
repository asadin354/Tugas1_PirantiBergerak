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
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF001F54), // Navy
          foregroundColor: Colors.white,
        ),
      ),
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
                  backgroundImage: AssetImage("assets/images/profile.jpeg"),
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

                const SizedBox(height: 8),

                // NIM
                const Text(
                  "NIM: 2309106061",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const Divider(height: 30, thickness: 1),

                // Email
                const ListTile(
                  leading: Icon(Icons.email, color: Colors.pink),
                  title: Text("Email"),
                  subtitle: Text("asadinnurmuhammad@gmail.com"),
                ),

                // Instagram
                const ListTile(
                  leading: Icon(Icons.camera_alt, color: Colors.purple),
                  title: Text("Instagram"),
                  subtitle: Text("@mhmd_asadinnur"),
                ),

                // GitHub
                const ListTile(
                  leading: Icon(Icons.code, color: Colors.black),
                  title: Text("GitHub"),
                  subtitle: Text("github.com/asadin354"),
                ),

                // WhatsApp
                const ListTile(
                  leading: Icon(Icons.chat, color: Colors.green),
                  title: Text("WhatsApp"),
                  subtitle: Text("+62 857-5176-4005"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
