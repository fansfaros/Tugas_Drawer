import 'package:flutter/material.dart';
import 'main.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Fans Ach Farrosil Miqdad"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(""),
            ),
            accountEmail: Text("e41210961@student.polije.ac.id"),
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: () {},
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.contacts,
            title: "Contacts",
            onTilePressed: () {},
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            key: null,
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp() ),
                    );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}