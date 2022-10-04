import 'package:basic_todo_app_with_hive_bloc/pages/bloc/bloc/home_bloc.dart';
import 'package:basic_todo_app_with_hive_bloc/service/todo_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/creat_todo_task.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        
        title: const Text('Todo'),
        actions: [
          IconButton(
            onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=> CreateNewTask()));
            } , 
            icon: const Icon(Icons.add))],
      ),
      body: BlocProvider(
         create: (context)=> HomeBloc(RepositoryProvider.of<TodoService>(context)),
         child: BlocBuilder<HomeBloc,HomeState>(
          builder: ((context, state) {
         return Container(); // bundan sonra

   } ))
  ));
  }
}

