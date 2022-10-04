
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel extends HiveObject{

  @HiveField(0)
  final String task;
  
  @HiveField(1)
  final bool completed;

  TaskModel({required this.task, this.completed = false});
}