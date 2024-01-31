import 'package:flutter/material.dart';

import '../Login/login.dart';

class AdminNavbar extends StatelessWidget {
  const AdminNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffFFF179),
            ),
            accountName: Text('Admin',style: TextStyle(color: Colors.black),),
            accountEmail: Text('admin12@gmail.com',style: TextStyle(color: Colors.black),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color(0xff268C92),
              child: ClipOval(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const LoginScreen())),
          ),
        ],
      ),
    );
  }
}
