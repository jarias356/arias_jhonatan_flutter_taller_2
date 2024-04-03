import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Small title', style: TextStyle(fontSize: 14, color: Colors.black)),
                  Text('Medium subtitle', style: TextStyle(color: Colors.black, fontSize: 22)),
                  Text('Big title', style: TextStyle(color: Colors.black, fontSize: 28)),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Option #1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Option #2'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Option #3'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
