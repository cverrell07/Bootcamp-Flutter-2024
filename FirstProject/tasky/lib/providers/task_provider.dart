import 'package:flutter/material.dart';
import 'package:tasky/models/task_model.dart';

class TaskProvider with ChangeNotifier{
  List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

  void addTask(String taskName){
    _tasks.add(TaskModel(name: taskName));
    notifyListeners();
  }

  void toggleCompletion(int index){
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }
}