
import 'package:flutter/material.dart';

class CreateNewTask extends StatefulWidget {
  const CreateNewTask({super.key});

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  final _taskController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Qeyd et'),
          TextField(
            controller: _taskController,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(_taskController.text,);
              },
              child: Text('Save')),
        ],
      ),
    );
  }
}