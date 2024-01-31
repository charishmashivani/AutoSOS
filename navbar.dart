import 'package:autosos_flutter/Login/login.dart';
import 'package:autosos_flutter/screens/contacts.dart';
import 'package:autosos_flutter/screens/track_changes.dart';
import 'package:flutter/material.dart';
import 'package:autosos_flutter/screens/my_profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffFFF179),
            ),
              accountName: Text('Aubrey',style: TextStyle(color: Colors.black),),
              accountEmail: Text('aubrey81@gmail.com',style: TextStyle(color: Colors.black),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color(0xff268C92),
              child: ClipOval(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyProfile())),
          ),
          ListTile(
            leading: const Icon(Icons.track_changes),
            title: const Text('Track Progress'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const TrackChanges())),
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text('Contact'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ContactScreen())),
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
