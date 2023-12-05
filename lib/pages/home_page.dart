import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Ya Mero"),
          backgroundColor: Colors.deepOrange.shade500),
      drawer: Navbar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Iniciaste sesión como: " + user.email!),
          // MaterialButton(
          //   onPressed: () {
          //     FirebaseAuth.instance.signOut();
          //   },
          //   color: Colors.deepOrange[200],
          //   child: Text("Cerrar Sesión"),
          //)
        ],
      )),
    );
  }
}
