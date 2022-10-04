import 'package:basic_todo_app_with_hive_bloc/model/task_model.dart';
import 'package:basic_todo_app_with_hive_bloc/service/todo_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final TodoService _todoService;

  HomeBloc(this._todoService) : super(TodoInitial()) {
    on<LoadedTodoEvent>((event, emit) {
    final todo = _todoService.getTask(event.userName);
    emit(TodoLoadState(todo, event.userName));
    });

    on<AddTodoTask>((event,emit){
     final currentState = state as TodoLoadState;
     _todoService.addTask(event.taskText);
     add(AddTodoTask(currentState.userName));
    });

    on<CheckBoxTask>((event,emit){
     final currentState = state as TodoLoadState;
     _todoService.updateTask(event.checkBoxText, currentState.userName);
     add(AddTodoTask(currentState.userName));
    });
  }
}
