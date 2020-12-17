import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/models/todo_model.dart';
import '../domain/repositories/i_good_look_repository.dart';

part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final IGoodLookRepository goodLookRepository;
  TodoBloc({this.goodLookRepository}) : super(const ProgressIndicator());

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    yield* event.map(eventToDo: (EventToDo value) async* {
      yield const ProgressIndicator();
      final toDo = await goodLookRepository.getToDoList();
      yield StateToDo(toDo);
    });
  }
}

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.eventToDo() = EventToDo;
}

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.progressIndicator() = ProgressIndicator;
  const factory TodoState.stateToDo(List<ToDoModel> toDo) = StateToDo;
}
