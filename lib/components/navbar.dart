import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yameroapp/components/my_list_tile.dart';
import 'package:yameroapp/pages/profile_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey.shade400,
        child: Column(
          children: [
            //header
            const DrawerHeader(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 85,
              ),
            ),

            SizedBox(height: 15),
            //home list
            MyListTile(
              icon: Icons.home,
              text: 'M e n u  P r i n c i p a l ',
              onTap: () => Navigator.pop(context),
            ),

            //Perfil
            SizedBox(height: 5),
            MyListTile(
              icon: Icons.person,
              text: 'P e r f i l ',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              ),
            ),

            // Cerrar la sesión
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: MyListTile(
                icon: Icons.logout,
                text: 'C e r r a r  S e s i o n',
                onTap: () => FirebaseAuth.instance.signOut(),
              ),
            ),
          ],
        ));
  }
}
