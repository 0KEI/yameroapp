import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: Text("Pagina de Perfil"),
          backgroundColor: Colors.deepOrange.shade500),
      body: ListView(
        children: [
          // Foto de perfil

          // Correo

          // nombres y apellidos

          // Detalles
        ],
      ),
    );
  }
}
