

import 'package:basic_todo_app_with_hive_bloc/model/task_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoService{
  late Box<TaskModel> _task;

  Future<void> init() async{
    Hive.registerAdapter(TaskModelAdapter());
    _task = await Hive.openBox<TaskModel>('task');
  }

  List<TaskModel> getTask(String task){
    final taskGL = _task.values.where((element) => element.task == task);
    return taskGL.toList();
  }

  void addTask(String task){
    _task.add(TaskModel(task: task));
  }

  Future<void> removeTask(String task) async {
    final taskRemove =  _task.values.firstWhere(
      (element) => element.task == task );
    await taskRemove.delete();
  }

  Future<void> updateTask(String userName,String task) async {
    final taskEdit = _task.values.firstWhere(
      (element) =>  element.task == task);
      final taskIndex = taskEdit as int;
      await _task.put(taskIndex, TaskModel(task: task,completed:  !taskEdit.completed));
  }
}