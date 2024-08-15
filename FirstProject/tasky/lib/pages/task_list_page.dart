import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasky/pages/task_add_page.dart';
import 'package:tasky/providers/task_provider.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task List"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TaskAddPage()));
            }, 
            icon: const Icon(Icons.add)
          ),
        ],
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              final task = taskProvider.tasks[index];
              return ListTile(
                title: Text(task.name),
                trailing: Checkbox(
                  value: task.isCompleted,
                  onChanged: (value) {
                    taskProvider.toggleCompletion(index);
                  },
                ),
              );
            },
          );
        },
      )
    );
  }
}