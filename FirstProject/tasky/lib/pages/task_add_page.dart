import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasky/providers/task_provider.dart';

class TaskAddPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  
  TaskAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "Task Name"),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                if(_controller.text.isNotEmpty){
                  Provider.of<TaskProvider>(context, listen: false).addTask(_controller.text);
                  Navigator.pop(context);
                }
              }, 
              child: const Text("Add Task"),
            ),
          ],
        ),
      )
    );
  }
}