import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Rohan Gunge"),
            accountEmail: Text("gungerohan@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child:Image.asset('images/download.jpeg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: ()=> print('profile tapped'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: ()=> print('Message tapped'),
          ),
          ListTile(
            leading: Icon(Icons.line_axis),
            title: Text('Stats'),
            onTap: ()=> print('stats tapped'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: ()=> print('share tapped'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: ()=> print('notification tapped'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: ()=> print('Logout tapped'),
          ),
        ],
      ),
    );
  }
}
