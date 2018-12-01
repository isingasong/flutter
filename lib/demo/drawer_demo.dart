import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'max',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            ),
            accountEmail: Text('wabghaoo@fdofjiojg.net',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://img17.3lian.com/d/file/201702/15/43ee293f41a790802fc2489186959dac.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                image: NetworkImage(
                    'http://www.bizhidaquan.com/d/file/fengjing/ziranfengguang/2014-11-24/febebb9109d6b2f9ced523403e7e0832.jpg'),
                fit: BoxFit.cover,

              ),
            ),
          ),
          ListTile(
            title: Text(
              'message',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18.0,color:Colors.black ),
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
              'favorite',
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
              'setting',
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