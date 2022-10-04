part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoadedTodoEvent extends HomeEvent{
  const LoadedTodoEvent(this.userName);
  final String userName;

  @override
  List<Object?> get props => throw UnimplementedError();
}

class AddTodoTask extends HomeEvent{
  const AddTodoTask(this.taskText);
   final String taskText;

  @override
  List<Object?> get props => [taskText];
}

class CheckBoxTask extends HomeEvent{
  const CheckBoxTask(this.checkBoxText);
 final String checkBoxText;  

  @override
  List<Object?> get props => [checkBoxText];
}