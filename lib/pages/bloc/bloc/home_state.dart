part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  
}

class TodoInitial extends HomeState {

  @override
  List<Object?> get props => throw UnimplementedError();
}

class TodoLoadState extends HomeState{
 const TodoLoadState(this.task, this.userName);
 final List<TaskModel> task;
 final String userName;
 
  @override
  List<Object?> get props => [task,userName];
}
