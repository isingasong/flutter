import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'MAX',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('www.max@max.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.cyan.withOpacity(0.1), BlendMode.softLight)),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
