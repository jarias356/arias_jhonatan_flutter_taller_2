import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('I am a big title', style: TextStyle(color: Colors.white, fontSize: 28)),
                  Text('I am a medium subtitle', style: TextStyle(color: Colors.blueGrey, fontSize: 22)),
                  Text('I am a normal text'),
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
          ListTile(
            title: const Text('Option #4'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
