import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget Workshop'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Container Widget'),
            onTap: (){
              Navigator.pushNamed(context, '/container');
            },
          ),
          ListTile(
            title: const Text('Row & Column Widget'),
            onTap: (){
              Navigator.pushNamed(context, '/rowcolumn');
            },
          ),
          ListTile(
            title: const Text('ListView Widget'),
            onTap: (){},
          ),
          ListTile(
            title: const Text('Stateful Widget'),
            onTap: (){
              Navigator.pushNamed(context, '/stateful');
            },
          ),
        ],
      )
    );
  }
}