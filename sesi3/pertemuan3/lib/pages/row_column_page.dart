import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  width: 100.0,
                  height: 50.0,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100.0,
                  height: 50.0,
                ),
                Container(
                  color: Colors.green,
                  width: 100.0,
                  height: 50.0,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'This is a column widget containing a row widget with containers inside',
            ),
          ],
        ),
      )
    );
  }
}